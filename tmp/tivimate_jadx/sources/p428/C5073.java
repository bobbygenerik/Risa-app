package p428;

import p017.AbstractC0955;
import p017.AbstractC0993;
import p017.AbstractC1000;
import p017.C0966;
import p055.C1474;
import p307.AbstractC3740;

/* renamed from: ﹶʽ.ᵔʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5073 extends AbstractC5059 implements Comparable {

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public final boolean f19084;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final boolean f19085;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final boolean f19086;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final int f19087;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final boolean f19088;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final int f19089;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final int f19090;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final int f19091;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public final int f19092;

    public C5073(int i, C1474 c1474, int i2, C5063 c5063, int i3, String str, String str2) {
        super(i, c1474, i2);
        int i4;
        int i5 = 0;
        this.f19086 = AbstractC3740.m7940(i3, false);
        int i6 = this.f19044.f5919;
        int i7 = c5063.f5721;
        AbstractC0993 abstractC0993 = c5063.f5704;
        int i8 = i6 & (~i7);
        this.f19088 = (i8 & 1) != 0;
        this.f19085 = (i8 & 2) != 0;
        AbstractC0993 m3260 = str2 != null ? AbstractC0993.m3260(str2) : abstractC0993.isEmpty() ? AbstractC0993.m3260("") : abstractC0993;
        int i9 = 0;
        while (true) {
            if (i9 >= m3260.size()) {
                i4 = 0;
                i9 = Integer.MAX_VALUE;
                break;
            } else {
                i4 = C5078.m9981(this.f19044, (String) m3260.get(i9), c5063.f5713);
                if (i4 > 0) {
                    break;
                } else {
                    i9++;
                }
            }
        }
        this.f19091 = i9;
        this.f19087 = i4;
        int i10 = str2 != null ? 1088 : 0;
        int i11 = this.f19044.f5940;
        AbstractC0955 abstractC0955 = C5078.f19130;
        int bitCount = (i11 == 0 || i11 != i10) ? Integer.bitCount(i10 & i11) : Integer.MAX_VALUE;
        this.f19090 = bitCount;
        this.f19084 = (1088 & this.f19044.f5940) != 0;
        int m9981 = C5078.m9981(this.f19044, str, C5078.m9982(str) == null);
        this.f19092 = m9981;
        boolean z = i4 > 0 || (abstractC0993.isEmpty() && bitCount > 0) || this.f19088 || (this.f19085 && m9981 > 0);
        if (AbstractC3740.m7940(i3, c5063.f19058) && z) {
            i5 = 1;
        }
        this.f19089 = i5;
    }

    @Override // java.lang.Comparable
    /* renamed from: ʽ, reason: contains not printable characters and merged with bridge method [inline-methods] */
    public final int compareTo(C5073 c5073) {
        AbstractC1000 mo3225 = AbstractC1000.f3990.mo3225(this.f19086, c5073.f19086);
        Integer valueOf = Integer.valueOf(this.f19091);
        Integer valueOf2 = Integer.valueOf(c5073.f19091);
        C0966 c0966 = C0966.f3922;
        C0966 c09662 = C0966.f3921;
        AbstractC1000 mo3228 = mo3225.mo3228(valueOf, valueOf2, c09662);
        int i = c5073.f19087;
        int i2 = this.f19087;
        AbstractC1000 mo3229 = mo3228.mo3229(i2, i);
        int i3 = c5073.f19090;
        int i4 = this.f19090;
        AbstractC1000 mo32252 = mo3229.mo3229(i4, i3).mo3225(this.f19088, c5073.f19088);
        Boolean valueOf3 = Boolean.valueOf(this.f19085);
        Boolean valueOf4 = Boolean.valueOf(c5073.f19085);
        if (i2 != 0) {
            c0966 = c09662;
        }
        AbstractC1000 mo32292 = mo32252.mo3228(valueOf3, valueOf4, c0966).mo3229(this.f19092, c5073.f19092);
        if (i4 == 0) {
            mo32292 = mo32292.mo3226(this.f19084, c5073.f19084);
        }
        return mo32292.mo3227();
    }

    @Override // p428.AbstractC5059
    /* renamed from: ⁱˊ */
    public final /* bridge */ /* synthetic */ boolean mo9966(AbstractC5059 abstractC5059) {
        return false;
    }

    @Override // p428.AbstractC5059
    /* renamed from: ﹳٴ */
    public final int mo9967() {
        return this.f19089;
    }
}
