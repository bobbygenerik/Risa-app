package p328;

import java.util.ArrayList;

/* renamed from: ᴵᵔ.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4075 implements Cloneable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public AbstractC4084 f15531;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public ArrayList f15532;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public ArrayList f15538;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public ArrayList f15537 = null;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public boolean f15530 = false;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public C4075 f15534 = null;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public boolean f15536 = false;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public long f15533 = 0;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public long f15539 = 0;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public long f15535 = 0;

    public C4075(AbstractC4084 abstractC4084) {
        this.f15531 = abstractC4084;
    }

    /* renamed from: ˈ, reason: contains not printable characters and merged with bridge method [inline-methods] */
    public final C4075 clone() {
        try {
            C4075 c4075 = (C4075) super.clone();
            c4075.f15531 = this.f15531.mo8311();
            if (this.f15537 != null) {
                c4075.f15537 = new ArrayList(this.f15537);
            }
            if (this.f15532 != null) {
                c4075.f15532 = new ArrayList(this.f15532);
            }
            if (this.f15538 != null) {
                c4075.f15538 = new ArrayList(this.f15538);
            }
            c4075.f15530 = false;
            return c4075;
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m8335(C4075 c4075) {
        if (this.f15532 == null) {
            this.f15532 = new ArrayList();
        }
        if (this.f15532.contains(c4075)) {
            return;
        }
        this.f15532.add(c4075);
        c4075.m8335(this);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m8336(C4075 c4075) {
        if (this.f15538 == null) {
            this.f15538 = new ArrayList();
        }
        if (this.f15538.contains(c4075)) {
            return;
        }
        this.f15538.add(c4075);
        if (c4075.f15537 == null) {
            c4075.f15537 = new ArrayList();
        }
        if (c4075.f15537.contains(this)) {
            return;
        }
        c4075.f15537.add(this);
        m8336(c4075);
    }
}
