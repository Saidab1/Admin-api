class Employee < ApplicationRecord
    enum type_doc_id: {ruc:"ruc", dni:"dni"}
 validates :name, :last_name, :date_birth, :job_position, :address, :type_doc_id, :doc_id_number, :hiring_date, :email, :job_area, presence: true
 validates :doc_id_number, length: {is: 8}
end
