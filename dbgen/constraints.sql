ALTER TABLE nation ADD CONSTRAINT nation_n_regionkey_fkey FOREIGN KEY (n_regionkey) REFERENCES region (r_regionkey) ON DELETE CASCADE;
ALTER TABLE supplier ADD CONSTRAINT supplier_s_nationkey_fkey FOREIGN KEY (s_nationkey) REFERENCES nation (n_nationkey) ON DELETE CASCADE;
ALTER TABLE partsupp ADD CONSTRAINT partsupp_ps_partkey_fkey FOREIGN KEY (ps_partkey) REFERENCES part (p_partkey) ON DELETE CASCADE;
ALTER TABLE partsupp ADD CONSTRAINT partsupp_ps_suppkey_fkey FOREIGN KEY (ps_suppkey) REFERENCES supplier (s_suppkey) ON DELETE CASCADE;
ALTER TABLE customer ADD CONSTRAINT customer_c_nationkey_fkey FOREIGN KEY (c_nationkey) REFERENCES nation (n_nationkey) ON DELETE CASCADE;
ALTER TABLE orders ADD CONSTRAINT orders_o_custkey_fkey FOREIGN KEY (o_custkey) REFERENCES customer (c_custkey) ON DELETE CASCADE;
ALTER TABLE lineitem ADD CONSTRAINT lineitem_l_orderkey_fkey FOREIGN KEY (l_orderkey) REFERENCES orders (o_orderkey) ON DELETE CASCADE;
ALTER TABLE lineitem ADD CONSTRAINT lineitem_l_partkey_l_suppkey_fkey FOREIGN KEY (l_partkey, l_suppkey) REFERENCES partsupp (ps_partkey, ps_suppkey) ON DELETE CASCADE;