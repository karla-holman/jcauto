require 'qbwc'

#module QBWC
  class CustomerWorker < QBWC::Worker

    def requests(job, session, data)
      requests = []
      Spree::User.each do |user|
        requests << 
        { 
          :customer_add_rq => {
            :customer_add => {
              :name => "#{user.bill_address ? user.bill_address.firstname : user.email} #{user.bill_address ? user.bill_address.lastname : "" }", 
              :is_active => true
            }
          }
        } 
      end

      requests
    end

    def handle_response(r, session, job, request, data)
      # handle_response will get customers in groups of 100. When this is 0, we're done.
=begin
      complete = r['xml_attributes']['iteratorRemainingCount'] == '0'

      r['customer_ret'].each do |qb_cus|
        qb_id = qb_cus['list_id']
        qb_name = qb_cus['name']
        Rails.logger.info("#{qb_id} #{qb_name}")
      end
=end
      Rails.logger.info("Finished adding customers")
    end

  end
#end