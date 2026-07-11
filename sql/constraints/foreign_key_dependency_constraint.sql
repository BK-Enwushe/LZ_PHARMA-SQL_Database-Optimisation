-- Inventory.stock dependency
ALTER TABLE inventory.stock
ADD CONSTRAINT fk_stock_drug
FOREIGN KEY (drug_id) REFERENCES inventory.drugs(drug_id)
ON DELETE CASCADE;

-- Inventory.suppliers dependency
ALTER TABLE inventory.suppliers
ADD CONSTRAINT fk_suppliers_drug
FOREIGN KEY (drug_id) REFERENCES inventory.drugs(drug_id)
ON DELETE CASCADE;