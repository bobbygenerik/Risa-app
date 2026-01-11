package p399;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.EnumC0235;
import p031.C1143;
import p031.C1144;
import p031.InterfaceC1141;
import p031.InterfaceC1147;
import p080.C1714;
import p087.AbstractC1746;
import p087.AbstractC1751;
import p087.C1739;
import p185.C2765;
import p185.C2766;
import p255.C3368;
import p331.C4189;
import p331.C4194;
import p366.AbstractC4471;
import p366.C4479;
import p366.C4493;

/* renamed from: ⁱⁱ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4754 implements Cloneable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public int f17952;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public boolean f17954;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public Drawable f17955;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public boolean f17958;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public boolean f17960;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public Drawable f17963;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public boolean f17967;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public C1714 f17962 = C1714.f7009;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public EnumC0235 f17951 = EnumC0235.f1675;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public boolean f17957 = true;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public int f17961 = -1;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public int f17956 = -1;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public InterfaceC1141 f17965 = C2766.f10527;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public C1144 f17964 = new C1144();

    /* renamed from: ᵔי, reason: contains not printable characters */
    public C1739 f17966 = new C3368(0);

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public Class f17953 = Object.class;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public boolean f17959 = true;

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static boolean m9505(int i, int i2) {
        return (i & i2) != 0;
    }

    public boolean equals(Object obj) {
        if (obj instanceof AbstractC4754) {
            return m9517((AbstractC4754) obj);
        }
        return false;
    }

    public int hashCode() {
        char[] cArr = AbstractC1746.f7105;
        return AbstractC1746.m4702(AbstractC1746.m4702(AbstractC1746.m4702(AbstractC1746.m4702(AbstractC1746.m4702(AbstractC1746.m4702(AbstractC1746.m4702(AbstractC1746.m4701(0, AbstractC1746.m4701(0, AbstractC1746.m4701(1, AbstractC1746.m4701(this.f17960 ? 1 : 0, AbstractC1746.m4701(this.f17956, AbstractC1746.m4701(this.f17961, AbstractC1746.m4701(this.f17957 ? 1 : 0, AbstractC1746.m4702(AbstractC1746.m4701(0, AbstractC1746.m4702(AbstractC1746.m4701(0, AbstractC1746.m4702(AbstractC1746.m4701(0, AbstractC1746.m4701(Float.floatToIntBits(1.0f), 17)), this.f17955)), this.f17963)), null)))))))), this.f17962), this.f17951), this.f17964), this.f17966), this.f17953), this.f17965), null);
    }

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final AbstractC4754 m9506() {
        if (this.f17954) {
            return clone().m9506();
        }
        this.f17958 = true;
        this.f17952 |= 1048576;
        m9516();
        return this;
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final AbstractC4754 m9507(C1143 c1143, C4493 c4493) {
        if (this.f17954) {
            return clone().m9507(c1143, c4493);
        }
        AbstractC1751.m4712(c1143);
        this.f17964.f4409.put(c1143, c4493);
        m9516();
        return this;
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final AbstractC4754 m9508(InterfaceC1147 interfaceC1147, boolean z) {
        if (this.f17954) {
            return clone().m9508(interfaceC1147, z);
        }
        C4479 c4479 = new C4479(interfaceC1147, z);
        m9512(Bitmap.class, interfaceC1147, z);
        m9512(Drawable.class, c4479, z);
        m9512(BitmapDrawable.class, c4479, z);
        m9512(C4194.class, new C4189(interfaceC1147), z);
        m9516();
        return this;
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final AbstractC4754 m9509(C4493 c4493, AbstractC4471 abstractC4471) {
        if (this.f17954) {
            return clone().m9509(c4493, abstractC4471);
        }
        m9507(C4493.f16841, c4493);
        return m9508(abstractC4471, false);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final AbstractC4754 m9510(Class cls) {
        if (this.f17954) {
            return clone().m9510(cls);
        }
        this.f17953 = cls;
        this.f17952 |= 4096;
        m9516();
        return this;
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final AbstractC4754 m9511() {
        if (this.f17954) {
            return clone().m9511();
        }
        this.f17951 = EnumC0235.f1677;
        this.f17952 |= 8;
        m9516();
        return this;
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public final AbstractC4754 m9512(Class cls, InterfaceC1147 interfaceC1147, boolean z) {
        if (this.f17954) {
            return clone().m9512(cls, interfaceC1147, z);
        }
        AbstractC1751.m4712(interfaceC1147);
        this.f17966.put(cls, interfaceC1147);
        int i = this.f17952;
        this.f17952 = 67584 | i;
        this.f17959 = false;
        if (z) {
            this.f17952 = i | 198656;
            this.f17960 = true;
        }
        m9516();
        return this;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final AbstractC4754 m9513(C1714 c1714) {
        if (this.f17954) {
            return clone().m9513(c1714);
        }
        this.f17962 = c1714;
        this.f17952 |= 4;
        m9516();
        return this;
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public final AbstractC4754 m9514() {
        if (this.f17954) {
            return clone().m9514();
        }
        this.f17957 = false;
        this.f17952 |= 256;
        m9516();
        return this;
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final AbstractC4754 m9515(int i, int i2) {
        if (this.f17954) {
            return clone().m9515(i, i2);
        }
        this.f17956 = i;
        this.f17961 = i2;
        this.f17952 |= 512;
        m9516();
        return this;
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final void m9516() {
        if (this.f17967) {
            throw new IllegalStateException("You cannot modify locked T, consider clone()");
        }
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final boolean m9517(AbstractC4754 abstractC4754) {
        abstractC4754.getClass();
        return Float.compare(1.0f, 1.0f) == 0 && AbstractC1746.m4703(this.f17955, abstractC4754.f17955) && AbstractC1746.m4703(this.f17963, abstractC4754.f17963) && this.f17957 == abstractC4754.f17957 && this.f17961 == abstractC4754.f17961 && this.f17956 == abstractC4754.f17956 && this.f17960 == abstractC4754.f17960 && this.f17962.equals(abstractC4754.f17962) && this.f17951 == abstractC4754.f17951 && this.f17964.equals(abstractC4754.f17964) && this.f17966.equals(abstractC4754.f17966) && this.f17953.equals(abstractC4754.f17953) && this.f17965.equals(abstractC4754.f17965);
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final AbstractC4754 m9518(C2765 c2765) {
        if (this.f17954) {
            return clone().m9518(c2765);
        }
        this.f17965 = c2765;
        this.f17952 |= 1024;
        m9516();
        return this;
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [ʿٴ.ʽ, יـ.ﹳᐧ, יـ.ˑﹳ] */
    @Override // 
    /* renamed from: ⁱˊ, reason: merged with bridge method [inline-methods] */
    public AbstractC4754 clone() {
        try {
            AbstractC4754 abstractC4754 = (AbstractC4754) super.clone();
            C1144 c1144 = new C1144();
            abstractC4754.f17964 = c1144;
            c1144.f4409.mo4687(this.f17964.f4409);
            ?? c3368 = new C3368(0);
            abstractC4754.f17966 = c3368;
            c3368.putAll(this.f17966);
            abstractC4754.f17967 = false;
            abstractC4754.f17954 = false;
            return abstractC4754;
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: ﹳٴ */
    public AbstractC4754 mo1157(AbstractC4754 abstractC4754) {
        if (this.f17954) {
            return clone().mo1157(abstractC4754);
        }
        int i = abstractC4754.f17952;
        if (m9505(abstractC4754.f17952, 1048576)) {
            this.f17958 = abstractC4754.f17958;
        }
        if (m9505(abstractC4754.f17952, 4)) {
            this.f17962 = abstractC4754.f17962;
        }
        if (m9505(abstractC4754.f17952, 8)) {
            this.f17951 = abstractC4754.f17951;
        }
        if (m9505(abstractC4754.f17952, 16)) {
            this.f17955 = abstractC4754.f17955;
            this.f17952 &= -33;
        }
        if (m9505(abstractC4754.f17952, 32)) {
            this.f17955 = null;
            this.f17952 &= -17;
        }
        if (m9505(abstractC4754.f17952, 64)) {
            this.f17963 = abstractC4754.f17963;
            this.f17952 &= -129;
        }
        if (m9505(abstractC4754.f17952, 128)) {
            this.f17963 = null;
            this.f17952 &= -65;
        }
        if (m9505(abstractC4754.f17952, 256)) {
            this.f17957 = abstractC4754.f17957;
        }
        if (m9505(abstractC4754.f17952, 512)) {
            this.f17956 = abstractC4754.f17956;
            this.f17961 = abstractC4754.f17961;
        }
        if (m9505(abstractC4754.f17952, 1024)) {
            this.f17965 = abstractC4754.f17965;
        }
        if (m9505(abstractC4754.f17952, 4096)) {
            this.f17953 = abstractC4754.f17953;
        }
        if (m9505(abstractC4754.f17952, 8192)) {
            this.f17952 &= -16385;
        }
        if (m9505(abstractC4754.f17952, 16384)) {
            this.f17952 &= -8193;
        }
        if (m9505(abstractC4754.f17952, 131072)) {
            this.f17960 = abstractC4754.f17960;
        }
        if (m9505(abstractC4754.f17952, 2048)) {
            this.f17966.putAll(abstractC4754.f17966);
            this.f17959 = abstractC4754.f17959;
        }
        this.f17952 |= abstractC4754.f17952;
        this.f17964.f4409.mo4687(abstractC4754.f17964.f4409);
        m9516();
        return this;
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final AbstractC4754 m9519(Drawable drawable) {
        if (this.f17954) {
            return clone().m9519(drawable);
        }
        this.f17963 = drawable;
        this.f17952 = (this.f17952 | 64) & (-129);
        m9516();
        return this;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final AbstractC4754 m9520(Drawable drawable) {
        if (this.f17954) {
            return clone().m9520(drawable);
        }
        this.f17955 = drawable;
        this.f17952 = (this.f17952 | 16) & (-33);
        m9516();
        return this;
    }
}
