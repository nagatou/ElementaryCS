# sub.rb
# ����: ���R�� a, b
# �o��: a - b�i���͏o�Ă��Ȃ��Łj

a = gets().to_i       # ���͂��ꂽ���R���� x �ɑ��
b = gets().to_i       # ���͂��ꂽ���R���� y �ɑ��
sa = a                # x �̒l�� sa �ɑ��
while b > 0 && sa > 0 # b > 0 ���� sa > 0 �̊Ԃ� end �܂ł��J��Ԃ�
  sa = sa - 1         #   sa - 1 �̒l�� wa �ɑ��
  b = b - 1           #   y - 1 �̒l�� y �ɑ��
end                   # �J��Ԃ��̏I���
puts(sa)              # sa �̒l���o��
