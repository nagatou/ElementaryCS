# div.rb
# ����: ���R�� x, y
# �o��: x �� y �̏��Ɨ]��

x = gets().to_i       # ���͂��ꂽ���R���� x �ɑ��
y = gets().to_i       # ���͂��ꂽ���R���� y �ɑ��
shou = 0              # 0 �� shou �ɑ��
amari = x             # x �� amari �ɑ��
while amari >= y      # amari �� y �ȏ�̊Ԃ� end �܂ł��J��Ԃ�
  shou = shou + 1     #   shou + 1 �̒l�� shou �ɑ��
  amari = amari - y   #   amari - y �̒l�� amari �ɑ��
end                   # �J��Ԃ��̏I���
puts(shou)            # shou �̒l���o��
puts(amari)           # amari �̒l���o��

