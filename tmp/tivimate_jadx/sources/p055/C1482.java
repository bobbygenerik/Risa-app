package p055;

import j$.util.Objects;
import java.util.Arrays;
import p017.AbstractC0993;
import p017.C0956;
import p017.C0982;
import p035.AbstractC1220;
import p223.C3056;

/* renamed from: ʽⁱ.ᴵᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1482 {

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final C1482 f5805;

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final Integer f5806;

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public final CharSequence f5807;

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final Integer f5808;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final Integer f5809;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final CharSequence f5810;

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final CharSequence f5811;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final AbstractC0993 f5812;

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public final CharSequence f5813;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final Integer f5814;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final CharSequence f5815;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final Integer f5816;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final Integer f5817;

    /* renamed from: ˏי, reason: contains not printable characters */
    public final CharSequence f5818;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final CharSequence f5819;

    /* renamed from: יـ, reason: contains not printable characters */
    public final CharSequence f5820;

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final Integer f5821;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final Boolean f5822;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final Integer f5823;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final Integer f5824;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final Integer f5825;

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final Integer f5826;

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public final Integer f5827;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final CharSequence f5828;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final CharSequence f5829;

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final Integer f5830;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final Integer f5831;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final byte[] f5832;

    /* JADX WARN: Type inference failed for: r0v0, types: [ʽⁱ.ˈٴ, java.lang.Object] */
    static {
        ?? obj = new Object();
        C0982 c0982 = AbstractC0993.f3977;
        obj.f5691 = C0956.f3901;
        f5805 = new C1482(obj);
        AbstractC1220.m3785(0, 1, 2, 3, 4);
        AbstractC1220.m3785(5, 6, 8, 9, 10);
        AbstractC1220.m3785(11, 12, 13, 14, 15);
        AbstractC1220.m3785(16, 17, 18, 19, 20);
        AbstractC1220.m3785(21, 22, 23, 24, 25);
        AbstractC1220.m3785(26, 27, 28, 29, 30);
        AbstractC1220.m3785(31, 32, 33, 34, 1000);
    }

    public C1482(C1459 c1459) {
        Boolean bool = c1459.f5686;
        Integer num = c1459.f5678;
        Integer num2 = c1459.f5672;
        int i = 1;
        int i2 = 0;
        if (bool != null) {
            if (!bool.booleanValue()) {
                num = -1;
            } else if (num == null || num.intValue() == -1) {
                if (num2 != null) {
                    switch (num2.intValue()) {
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                        case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                        case C3056.BYTES_FIELD_NUMBER /* 8 */:
                        case 9:
                        case 10:
                        case 11:
                        case 12:
                        case 13:
                        case 14:
                        case 15:
                        case 16:
                        case 17:
                        case 18:
                        case 19:
                        case 31:
                        case 32:
                        case 33:
                        case 34:
                        case 35:
                            break;
                        case 20:
                        case 26:
                        case 27:
                        case 28:
                        case 29:
                        case 30:
                        default:
                            i = 0;
                            break;
                        case 21:
                            i = 2;
                            break;
                        case 22:
                            i = 3;
                            break;
                        case 23:
                            i = 4;
                            break;
                        case 24:
                            i = 5;
                            break;
                        case 25:
                            i = 6;
                            break;
                    }
                    i2 = i;
                }
                num = Integer.valueOf(i2);
            }
        } else if (num != null) {
            boolean z = num.intValue() != -1;
            bool = Boolean.valueOf(z);
            if (z && num2 == null) {
                switch (num.intValue()) {
                    case 1:
                        break;
                    case 2:
                        i2 = 21;
                        break;
                    case 3:
                        i2 = 22;
                        break;
                    case 4:
                        i2 = 23;
                        break;
                    case 5:
                        i2 = 24;
                        break;
                    case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                        i2 = 25;
                        break;
                    default:
                        i2 = 20;
                        break;
                }
                num2 = Integer.valueOf(i2);
            }
        }
        this.f5829 = c1459.f5693;
        this.f5828 = c1459.f5692;
        this.f5810 = c1459.f5675;
        this.f5815 = c1459.f5679;
        this.f5819 = c1459.f5683;
        this.f5832 = c1459.f5696;
        this.f5823 = c1459.f5687;
        this.f5825 = c1459.f5689;
        this.f5808 = c1459.f5673;
        this.f5814 = num;
        this.f5822 = bool;
        Integer num3 = c1459.f5695;
        this.f5831 = num3;
        this.f5816 = num3;
        this.f5824 = c1459.f5680;
        this.f5817 = c1459.f5688;
        this.f5809 = c1459.f5681;
        this.f5826 = c1459.f5674;
        this.f5830 = c1459.f5690;
        this.f5820 = c1459.f5694;
        this.f5818 = c1459.f5684;
        this.f5811 = c1459.f5682;
        this.f5806 = c1459.f5676;
        this.f5821 = c1459.f5671;
        this.f5813 = c1459.f5685;
        this.f5807 = c1459.f5677;
        this.f5827 = num2;
        this.f5812 = c1459.f5691;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C1482.class != obj.getClass()) {
            return false;
        }
        C1482 c1482 = (C1482) obj;
        return Objects.equals(this.f5829, c1482.f5829) && Objects.equals(this.f5828, c1482.f5828) && Objects.equals(this.f5810, c1482.f5810) && Objects.equals(this.f5815, c1482.f5815) && Objects.equals(this.f5819, c1482.f5819) && Arrays.equals(this.f5832, c1482.f5832) && Objects.equals(this.f5823, c1482.f5823) && Objects.equals(this.f5825, c1482.f5825) && Objects.equals(this.f5808, c1482.f5808) && Objects.equals(this.f5814, c1482.f5814) && Objects.equals(this.f5822, c1482.f5822) && Objects.equals(this.f5816, c1482.f5816) && Objects.equals(this.f5824, c1482.f5824) && Objects.equals(this.f5817, c1482.f5817) && Objects.equals(this.f5809, c1482.f5809) && Objects.equals(this.f5826, c1482.f5826) && Objects.equals(this.f5830, c1482.f5830) && Objects.equals(this.f5820, c1482.f5820) && Objects.equals(this.f5818, c1482.f5818) && Objects.equals(this.f5811, c1482.f5811) && Objects.equals(this.f5806, c1482.f5806) && Objects.equals(this.f5821, c1482.f5821) && Objects.equals(this.f5813, c1482.f5813) && Objects.equals(this.f5807, c1482.f5807) && Objects.equals(this.f5827, c1482.f5827) && Objects.equals(this.f5812, c1482.f5812);
    }

    public final int hashCode() {
        return Objects.hash(this.f5829, this.f5828, this.f5810, this.f5815, null, null, this.f5819, null, null, null, Integer.valueOf(Arrays.hashCode(this.f5832)), this.f5823, null, this.f5825, this.f5808, this.f5814, this.f5822, null, this.f5816, this.f5824, this.f5817, this.f5809, this.f5826, this.f5830, this.f5820, this.f5818, this.f5811, this.f5806, this.f5821, this.f5813, null, this.f5807, this.f5827, true, this.f5812);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [ʽⁱ.ˈٴ, java.lang.Object] */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C1459 m4292() {
        ?? obj = new Object();
        obj.f5693 = this.f5829;
        obj.f5692 = this.f5828;
        obj.f5675 = this.f5810;
        obj.f5679 = this.f5815;
        obj.f5683 = this.f5819;
        obj.f5696 = this.f5832;
        obj.f5687 = this.f5823;
        obj.f5689 = this.f5825;
        obj.f5673 = this.f5808;
        obj.f5678 = this.f5814;
        obj.f5686 = this.f5822;
        obj.f5695 = this.f5816;
        obj.f5680 = this.f5824;
        obj.f5688 = this.f5817;
        obj.f5681 = this.f5809;
        obj.f5674 = this.f5826;
        obj.f5690 = this.f5830;
        obj.f5694 = this.f5820;
        obj.f5684 = this.f5818;
        obj.f5682 = this.f5811;
        obj.f5676 = this.f5806;
        obj.f5671 = this.f5821;
        obj.f5685 = this.f5813;
        obj.f5677 = this.f5807;
        obj.f5672 = this.f5827;
        obj.f5691 = this.f5812;
        return obj;
    }
}
