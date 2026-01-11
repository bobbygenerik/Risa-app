package p018;

import java.util.ArrayList;
import p223.C3056;

/* renamed from: ʼʼ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C1023 implements InterfaceC1012 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public final AbstractC1014 f4050;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public int f4053;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f4058;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public AbstractC1014 f4056 = null;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public boolean f4055 = false;

    /* renamed from: ʽ, reason: contains not printable characters */
    public boolean f4048 = false;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f4051 = 1;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public int f4054 = 1;

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public C1017 f4047 = null;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public boolean f4049 = false;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final ArrayList f4052 = new ArrayList();

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final ArrayList f4057 = new ArrayList();

    public C1023(AbstractC1014 abstractC1014) {
        this.f4050 = abstractC1014;
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(this.f4050.f4015.f6547);
        sb.append(":");
        switch (this.f4051) {
            case 1:
                str = "UNKNOWN";
                break;
            case 2:
                str = "HORIZONTAL_DIMENSION";
                break;
            case 3:
                str = "VERTICAL_DIMENSION";
                break;
            case 4:
                str = "LEFT";
                break;
            case 5:
                str = "RIGHT";
                break;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                str = "TOP";
                break;
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                str = "BOTTOM";
                break;
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                str = "BASELINE";
                break;
            default:
                str = "null";
                break;
        }
        sb.append(str);
        sb.append("(");
        sb.append(this.f4049 ? Integer.valueOf(this.f4053) : "unresolved");
        sb.append(") <t=");
        sb.append(this.f4057.size());
        sb.append(":d=");
        sb.append(this.f4052.size());
        sb.append(">");
        return sb.toString();
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m3344() {
        this.f4057.clear();
        this.f4052.clear();
        this.f4049 = false;
        this.f4053 = 0;
        this.f4048 = false;
        this.f4055 = false;
    }

    /* renamed from: ˈ */
    public void mo3329(int i) {
        if (this.f4049) {
            return;
        }
        this.f4049 = true;
        this.f4053 = i;
        ArrayList arrayList = this.f4052;
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            InterfaceC1012 interfaceC1012 = (InterfaceC1012) obj;
            interfaceC1012.mo3307(interfaceC1012);
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m3345(AbstractC1014 abstractC1014) {
        this.f4052.add(abstractC1014);
        if (this.f4049) {
            abstractC1014.mo3307(abstractC1014);
        }
    }

    @Override // p018.InterfaceC1012
    /* renamed from: ﹳٴ */
    public final void mo3307(InterfaceC1012 interfaceC1012) {
        ArrayList arrayList = this.f4057;
        int size = arrayList.size();
        int i = 0;
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            if (!((C1023) obj).f4049) {
                return;
            }
        }
        this.f4048 = true;
        AbstractC1014 abstractC1014 = this.f4056;
        if (abstractC1014 != null) {
            abstractC1014.mo3307(this);
        }
        if (this.f4055) {
            this.f4050.mo3307(this);
            return;
        }
        int size2 = arrayList.size();
        C1023 c1023 = null;
        int i3 = 0;
        while (i3 < size2) {
            Object obj2 = arrayList.get(i3);
            i3++;
            C1023 c10232 = (C1023) obj2;
            if (!(c10232 instanceof C1017)) {
                i++;
                c1023 = c10232;
            }
        }
        if (c1023 != null && i == 1 && c1023.f4049) {
            C1017 c1017 = this.f4047;
            if (c1017 != null) {
                if (!c1017.f4049) {
                    return;
                } else {
                    this.f4058 = this.f4054 * c1017.f4053;
                }
            }
            mo3329(c1023.f4053 + this.f4058);
        }
        AbstractC1014 abstractC10142 = this.f4056;
        if (abstractC10142 != null) {
            abstractC10142.mo3307(this);
        }
    }
}
