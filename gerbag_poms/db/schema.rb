# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 0) do

  create_table "customers", primary_key: "CustomerID", force: true do |t|
    t.string "CustomerName",   limit: 100
    t.string "ContactPerson",  limit: 100
    t.string "ContactNumber",  limit: 45
    t.text   "MailingAddress", limit: 2147483647
  end

  create_table "formalquotationcustomer", primary_key: "GITPID", force: true do |t|
    t.integer "CustomerID",     null: false
    t.integer "Completion",     null: false
    t.integer "TermsofPayment", null: false
    t.integer "Validity",       null: false
  end

  add_index "formalquotationcustomer", ["CustomerID"], name: "CustomerID_idx", using: :btree

  create_table "fqcustomer_item", id: false, force: true do |t|
    t.integer "GITPID", null: false
    t.integer "ITEMID", null: false
  end

  add_index "fqcustomer_item", ["GITPID"], name: "GITPID_idx", using: :btree
  add_index "fqcustomer_item", ["ITEMID"], name: "ItemID_idx", using: :btree

  create_table "invoice", primary_key: "InvoiceID", force: true do |t|
    t.integer "POID",          null: false
    t.integer "TotalUnitCost", null: false
    t.integer "VAT",           null: false
    t.integer "TotalCost",     null: false
  end

  add_index "invoice", ["POID"], name: "POID_idx", using: :btree

  create_table "items", primary_key: "ItemID", force: true do |t|
    t.string  "ItemDescription", limit: 100,                         null: false
    t.string  "Unit",            limit: 100,                         null: false
    t.integer "Quantity",                                            null: false
    t.decimal "Price",                       precision: 2, scale: 0, null: false
    t.integer "Availability",    limit: 1,                           null: false
  end

  create_table "o_item", id: false, force: true do |t|
    t.integer "OrderID", null: false
    t.integer "ItemID",  null: false
  end

  add_index "o_item", ["ItemID"], name: "ItemID_idx", using: :btree
  add_index "o_item", ["OrderID"], name: "OrderID_idx", using: :btree

  create_table "orders", primary_key: "OrderID", force: true do |t|
    t.integer "SupplierID",            null: false
    t.date    "OrderDate",             null: false
    t.string  "TotalCost",  limit: 45, null: false
  end

  add_index "orders", ["SupplierID"], name: "SupplierID_idx", using: :btree

  create_table "po_item", id: false, force: true do |t|
    t.integer "POID",   null: false
    t.integer "ItemID", null: false
  end

  add_index "po_item", ["ItemID"], name: "Item_ID_idx", using: :btree
  add_index "po_item", ["POID"], name: "PO_ID_idx", using: :btree

  create_table "purchaseorder", primary_key: "PO", force: true do |t|
    t.integer "CustomerID", null: false
    t.date    "PODate",     null: false
  end

  add_index "purchaseorder", ["CustomerID"], name: "Customer_ID_idx", using: :btree

  create_table "qsupplier_item", id: false, force: true do |t|
    t.integer "RFQID",  null: false
    t.integer "ItemID", null: false
  end

  add_index "qsupplier_item", ["ItemID"], name: "I_ID_idx", using: :btree
  add_index "qsupplier_item", ["RFQID"], name: "RFQID_idx", using: :btree

  create_table "quotationsupplier", primary_key: "RFQID", force: true do |t|
    t.integer "SupplierID",               null: false
    t.date    "DateRequested",            null: false
    t.string  "DateRequired",  limit: 45, null: false
  end

  add_index "quotationsupplier", ["SupplierID"], name: "SupplierID_idx", using: :btree

  create_table "suppliers", primary_key: "SupplierID", force: true do |t|
    t.string "SupplierName",   limit: 100,        null: false
    t.string "ContactPerson",  limit: 100,        null: false
    t.string "ContactNumber",  limit: 45,         null: false
    t.text   "MailingAddress", limit: 2147483647, null: false
  end

end
