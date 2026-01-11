package com.bumptech.glide;

import android.content.Context;
import android.util.Log;
import androidx.datastore.preferences.protobuf.C0025;
import com.google.android.gms.internal.measurement.C0344;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import p066.InterfaceC1616;
import p087.AbstractC1746;
import p087.AbstractC1751;
import p255.C3359;
import p399.AbstractC4754;
import p399.C4751;
import p399.C4752;
import p399.C4753;
import p399.C4755;
import p399.InterfaceC4748;
import p399.InterfaceC4749;
import p399.InterfaceC4750;

/* renamed from: com.bumptech.glide.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0234 extends AbstractC4754 {

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public final ComponentCallbacks2C0236 f1663;

    /* renamed from: ʿ, reason: contains not printable characters */
    public C0234 f1664;

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public C0234 f1665;

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public AbstractC0232 f1666;

    /* renamed from: ˉـ, reason: contains not printable characters */
    public ArrayList f1667;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public final Context f1668;

    /* renamed from: ـˏ, reason: contains not printable characters */
    public final Class f1669;

    /* renamed from: ᐧᴵ, reason: contains not printable characters */
    public boolean f1670;

    /* renamed from: ᐧﾞ, reason: contains not printable characters */
    public boolean f1671;

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public Object f1672;

    /* renamed from: ᵎᵔ, reason: contains not printable characters */
    public boolean f1673 = true;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public final C0233 f1674;

    static {
    }

    public C0234(ComponentCallbacks2C0238 componentCallbacks2C0238, ComponentCallbacks2C0236 componentCallbacks2C0236, Class cls, Context context) {
        C4755 c4755;
        this.f1663 = componentCallbacks2C0236;
        this.f1669 = cls;
        this.f1668 = context;
        C3359 c3359 = componentCallbacks2C0236.f1682.f1705.f1662;
        AbstractC0232 abstractC0232 = (AbstractC0232) c3359.get(cls);
        if (abstractC0232 == null) {
            Iterator it = ((C0025) c3359.entrySet()).iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                if (((Class) entry.getKey()).isAssignableFrom(cls)) {
                    abstractC0232 = (AbstractC0232) entry.getValue();
                }
            }
        }
        this.f1666 = abstractC0232 == null ? C0233.f1652 : abstractC0232;
        this.f1674 = componentCallbacks2C0238.f1705;
        Iterator it2 = componentCallbacks2C0236.f1690.iterator();
        while (it2.hasNext()) {
            m1152((InterfaceC4750) it2.next());
        }
        synchronized (componentCallbacks2C0236) {
            c4755 = componentCallbacks2C0236.f1686;
        }
        mo1157(c4755);
    }

    @Override // p399.AbstractC4754
    public final boolean equals(Object obj) {
        if (!(obj instanceof C0234)) {
            return false;
        }
        C0234 c0234 = (C0234) obj;
        return super.equals(c0234) && Objects.equals(this.f1669, c0234.f1669) && this.f1666.equals(c0234.f1666) && Objects.equals(this.f1672, c0234.f1672) && Objects.equals(this.f1667, c0234.f1667) && Objects.equals(this.f1664, c0234.f1664) && Objects.equals(this.f1665, c0234.f1665) && this.f1673 == c0234.f1673 && this.f1671 == c0234.f1671;
    }

    @Override // p399.AbstractC4754
    public final int hashCode() {
        return AbstractC1746.m4701(this.f1671 ? 1 : 0, AbstractC1746.m4701(this.f1673 ? 1 : 0, AbstractC1746.m4702(AbstractC1746.m4702(AbstractC1746.m4702(AbstractC1746.m4702(AbstractC1746.m4702(AbstractC1746.m4702(AbstractC1746.m4702(super.hashCode(), this.f1669), this.f1666), this.f1672), this.f1667), this.f1664), this.f1665), null)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ʼʼ, reason: contains not printable characters */
    public final InterfaceC4748 m1146(Object obj, InterfaceC1616 interfaceC1616, InterfaceC4749 interfaceC4749, AbstractC0232 abstractC0232, EnumC0235 enumC0235, int i, int i2, AbstractC4754 abstractC4754) {
        InterfaceC4749 interfaceC47492;
        InterfaceC4749 interfaceC47493;
        AbstractC4754 abstractC47542;
        C4751 c4751;
        EnumC0235 enumC02352;
        if (this.f1665 != null) {
            interfaceC47493 = new C4753(obj, interfaceC4749);
            interfaceC47492 = interfaceC47493;
        } else {
            interfaceC47492 = null;
            interfaceC47493 = interfaceC4749;
        }
        C0234 c0234 = this.f1664;
        if (c0234 == null) {
            Context context = this.f1668;
            C0233 c0233 = this.f1674;
            abstractC47542 = abstractC4754;
            c4751 = new C4751(context, c0233, obj, this.f1672, this.f1669, abstractC47542, i, i2, enumC0235, interfaceC1616, this.f1667, interfaceC47493, c0233.f1658, abstractC0232.f1651);
        } else {
            if (this.f1670) {
                throw new IllegalStateException("You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()");
            }
            AbstractC0232 abstractC02322 = c0234.f1673 ? abstractC0232 : c0234.f1666;
            if (AbstractC4754.m9505(c0234.f17952, 8)) {
                enumC02352 = this.f1664.f17951;
            } else {
                int ordinal = enumC0235.ordinal();
                if (ordinal == 0 || ordinal == 1) {
                    enumC02352 = EnumC0235.f1676;
                } else if (ordinal == 2) {
                    enumC02352 = EnumC0235.f1678;
                } else {
                    if (ordinal != 3) {
                        throw new IllegalArgumentException("unknown priority: " + this.f17951);
                    }
                    enumC02352 = EnumC0235.f1675;
                }
            }
            EnumC0235 enumC02353 = enumC02352;
            C0234 c02342 = this.f1664;
            int i3 = c02342.f17956;
            int i4 = c02342.f17961;
            if (AbstractC1746.m4697(i, i2)) {
                C0234 c02343 = this.f1664;
                if (!AbstractC1746.m4697(c02343.f17956, c02343.f17961)) {
                    i3 = abstractC4754.f17956;
                    i4 = abstractC4754.f17961;
                }
            }
            int i5 = i4;
            C4752 c4752 = new C4752(obj, interfaceC47493);
            Context context2 = this.f1668;
            C4752 c47522 = c4752;
            C0233 c02332 = this.f1674;
            C4751 c47512 = new C4751(context2, c02332, obj, this.f1672, this.f1669, abstractC4754, i, i2, enumC0235, interfaceC1616, this.f1667, c47522, c02332.f1658, abstractC0232.f1651);
            this.f1670 = true;
            C0234 c02344 = this.f1664;
            InterfaceC4748 m1146 = c02344.m1146(obj, interfaceC1616, c47522, abstractC02322, enumC02353, i3, i5, c02344);
            this.f1670 = false;
            c47522.f17938 = c47512;
            c47522.f17939 = m1146;
            abstractC47542 = abstractC4754;
            c4751 = c47522;
        }
        if (interfaceC47492 == null) {
            return c4751;
        }
        C0234 c02345 = this.f1665;
        int i6 = c02345.f17956;
        int i7 = c02345.f17961;
        if (AbstractC1746.m4697(i, i2)) {
            C0234 c02346 = this.f1665;
            if (!AbstractC1746.m4697(c02346.f17956, c02346.f17961)) {
                i6 = abstractC47542.f17956;
                i7 = abstractC47542.f17961;
            }
        }
        int i8 = i7;
        C0234 c02347 = this.f1665;
        C4753 c4753 = interfaceC47492;
        InterfaceC4748 m11462 = c02347.m1146(obj, interfaceC1616, c4753, c02347.f1666, c02347.f17951, i6, i8, c02347);
        c4753.f17945 = c4751;
        c4753.f17946 = m11462;
        return c4753;
    }

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final void m1147(InterfaceC1616 interfaceC1616, AbstractC4754 abstractC4754) {
        AbstractC1751.m4712(interfaceC1616);
        if (!this.f1671) {
            throw new IllegalArgumentException("You must call #load() before calling #into()");
        }
        InterfaceC4748 m1146 = m1146(new Object(), interfaceC1616, null, this.f1666, abstractC4754.f17951, abstractC4754.f17956, abstractC4754.f17961, abstractC4754);
        InterfaceC4748 mo1189 = interfaceC1616.mo1189();
        if (m1146.mo9487(mo1189) && (abstractC4754.f17957 || !mo1189.mo9488())) {
            AbstractC1751.m4711(mo1189, "Argument must not be null");
            if (mo1189.isRunning()) {
                return;
            }
            mo1189.mo9490();
            return;
        }
        this.f1663.m1166(interfaceC1616);
        interfaceC1616.mo1191(m1146);
        ComponentCallbacks2C0236 componentCallbacks2C0236 = this.f1663;
        synchronized (componentCallbacks2C0236) {
            componentCallbacks2C0236.f1685.f13894.add(interfaceC1616);
            C0344 c0344 = componentCallbacks2C0236.f1683;
            ((Set) c0344.f1997).add(m1146);
            if (c0344.f2000) {
                m1146.clear();
                if (Log.isLoggable("RequestTracker", 2)) {
                }
                ((HashSet) c0344.f1999).add(m1146);
            } else {
                m1146.mo9490();
            }
        }
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C0234 m1148(C0234 c0234) {
        if (this.f17954) {
            return clone().m1148(c0234);
        }
        this.f1665 = c0234;
        m9516();
        return this;
    }

    @Override // p399.AbstractC4754
    /* renamed from: ʾᵎ, reason: contains not printable characters and merged with bridge method [inline-methods] */
    public final C0234 mo1157(AbstractC4754 abstractC4754) {
        AbstractC1751.m4712(abstractC4754);
        return (C0234) super.mo1157(abstractC4754);
    }

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final C0234 m1150(InterfaceC4750 interfaceC4750) {
        if (this.f17954) {
            return clone().m1150(interfaceC4750);
        }
        this.f1667 = null;
        return m1152(interfaceC4750);
    }

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final C0234 m1151(AbstractC0232 abstractC0232) {
        if (this.f17954) {
            return clone().m1151(abstractC0232);
        }
        AbstractC1751.m4711(abstractC0232, "Argument must not be null");
        this.f1666 = abstractC0232;
        this.f1673 = false;
        m9516();
        return this;
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final C0234 m1152(InterfaceC4750 interfaceC4750) {
        if (this.f17954) {
            return clone().m1152(interfaceC4750);
        }
        if (interfaceC4750 != null) {
            if (this.f1667 == null) {
                this.f1667 = new ArrayList();
            }
            this.f1667.add(interfaceC4750);
        }
        m9516();
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0086  */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.Object, ᵔﹶ.ˈ] */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.Object, ᵔﹶ.ˈ] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Object, ᵔﹶ.ˈ] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Object, ᵔﹶ.ˈ] */
    /* renamed from: ᴵˊ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m1153(android.widget.ImageView r5) {
        /*
            r4 = this;
            p087.AbstractC1746.m4704()
            p087.AbstractC1751.m4712(r5)
            r0 = 2048(0x800, float:2.87E-42)
            int r1 = r4.f17952
            boolean r0 = p399.AbstractC4754.m9505(r1, r0)
            if (r0 != 0) goto L6d
            android.widget.ImageView$ScaleType r0 = r5.getScaleType()
            if (r0 == 0) goto L6d
            int[] r0 = com.bumptech.glide.AbstractC0230.f1648
            android.widget.ImageView$ScaleType r1 = r5.getScaleType()
            int r1 = r1.ordinal()
            r0 = r0[r1]
            r1 = 1
            switch(r0) {
                case 1: goto L5d;
                case 2: goto L4b;
                case 3: goto L39;
                case 4: goto L39;
                case 5: goto L39;
                case 6: goto L27;
                default: goto L26;
            }
        L26:
            goto L6d
        L27:
            com.bumptech.glide.ٴﹶ r0 = r4.clone()
            ᵔﹶ.ﾞʻ r2 = p366.C4493.f16838
            ᵔﹶ.ᵔᵢ r3 = new ᵔﹶ.ᵔᵢ
            r3.<init>()
            ⁱⁱ.ﹳٴ r0 = r0.m9509(r2, r3)
            r0.f17959 = r1
            goto L6e
        L39:
            com.bumptech.glide.ٴﹶ r0 = r4.clone()
            ᵔﹶ.ﾞʻ r2 = p366.C4493.f16843
            ᵔﹶ.ʽﹳ r3 = new ᵔﹶ.ʽﹳ
            r3.<init>()
            ⁱⁱ.ﹳٴ r0 = r0.m9509(r2, r3)
            r0.f17959 = r1
            goto L6e
        L4b:
            com.bumptech.glide.ٴﹶ r0 = r4.clone()
            ᵔﹶ.ﾞʻ r2 = p366.C4493.f16838
            ᵔﹶ.ᵔᵢ r3 = new ᵔﹶ.ᵔᵢ
            r3.<init>()
            ⁱⁱ.ﹳٴ r0 = r0.m9509(r2, r3)
            r0.f17959 = r1
            goto L6e
        L5d:
            com.bumptech.glide.ٴﹶ r0 = r4.clone()
            ᵔﹶ.ﾞʻ r1 = p366.C4493.f16839
            ᵔﹶ.ᵎﹶ r2 = new ᵔﹶ.ᵎﹶ
            r2.<init>()
            ⁱⁱ.ﹳٴ r0 = r0.m9509(r1, r2)
            goto L6e
        L6d:
            r0 = r4
        L6e:
            com.bumptech.glide.ˑﹳ r1 = r4.f1674
            ᵎˉ.ⁱˊ r1 = r1.f1654
            r1.getClass()
            java.lang.Class<android.graphics.Bitmap> r1 = android.graphics.Bitmap.class
            java.lang.Class r2 = r4.f1669
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L86
            ʾˎ.ﹳٴ r1 = new ʾˎ.ﹳٴ
            r2 = 0
            r1.<init>(r5, r2)
            goto L94
        L86:
            java.lang.Class<android.graphics.drawable.Drawable> r1 = android.graphics.drawable.Drawable.class
            boolean r1 = r1.isAssignableFrom(r2)
            if (r1 == 0) goto L98
            ʾˎ.ﹳٴ r1 = new ʾˎ.ﹳٴ
            r2 = 1
            r1.<init>(r5, r2)
        L94:
            r4.m1147(r1, r0)
            return
        L98:
            java.lang.IllegalArgumentException r5 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "Unhandled class: "
            r0.<init>(r1)
            r0.append(r2)
            java.lang.String r1 = ", try .as*(Class).transcode(ResourceTranscoder)"
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            r5.<init>(r0)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.C0234.m1153(android.widget.ImageView):void");
    }

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final C0234 m1154(Object obj) {
        if (this.f17954) {
            return clone().m1154(obj);
        }
        this.f1672 = obj;
        this.f1671 = true;
        m9516();
        return this;
    }

    @Override // p399.AbstractC4754
    /* renamed from: ᵢˏ, reason: contains not printable characters and merged with bridge method [inline-methods] */
    public final C0234 clone() {
        C0234 c0234 = (C0234) super.clone();
        c0234.f1666 = c0234.f1666.clone();
        if (c0234.f1667 != null) {
            c0234.f1667 = new ArrayList(c0234.f1667);
        }
        C0234 c02342 = c0234.f1664;
        if (c02342 != null) {
            c0234.f1664 = c02342.clone();
        }
        C0234 c02343 = c0234.f1665;
        if (c02343 != null) {
            c0234.f1665 = c02343.clone();
        }
        return c0234;
    }
}
