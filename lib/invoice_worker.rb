require 'qbwc'

#module QBWC
  class InvoiceWorker < QBWC::Worker

    def requests(job, session, data)
      {
        :invoice_add_rq => {
          :invoice_add => {
            :customer_ref => {
              :full_name => "Karla Holman"
            },
            :ref_number => "1234567890",
            :bill_address => {
              :addr_1 => "16532 27th Ave NE",
              :city => "Shoreline",
              :state => "WA",
              :postal_code => "98155",
              :country => "USA"
            },
            :ship_address => {
              :addr_1 => "16532 27th Ave NE",
              :city => "Shoreline",
              :state => "WA",
              :postal_code => "98155",
              :country => "USA"
            },
            :invoice_line_add => {
              :item_ref => {
                :full_name => "Test Product"
              },
              :desc => "Test product order",
              :quantity => "5",
              :amount => "20.02",
              :inventory_site_reference => {
                :full_name => "Shop"
              },
              :sales_tax_code_ref => {
                :full_name => "Washington Sales Tax"
              }
            }
          }
        }
      }
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
      Rails.logger.info("Finished adding invoice for #{r['invoice_ret']['customer_ref']['full_name']}")
    end

  end
#end