class User < ApplicationRecord
    # before_save :downcase_email
    has_secure_password

    validates :email, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "must be a valid email address" }, presence: true

    # private

    # def downcase_email
    #     self.email = email.downcase
    # end
end
