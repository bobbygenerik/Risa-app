package p033;

import j$.util.DesugarCollections;
import java.util.EnumSet;
import java.util.Set;
import p317.InterfaceC3910;

/* renamed from: ʼﹳ.ᵔﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public enum EnumC1185 implements InterfaceC3910 {
    f4600(0),
    f4597(1),
    f4598(2);


    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static final Set f4601 = DesugarCollections.unmodifiableSet(EnumSet.allOf(EnumC1185.class));

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final long f4602;

    EnumC1185(int i) {
        this.f4602 = r1;
    }

    @Override // p317.InterfaceC3910
    public final long getValue() {
        return this.f4602;
    }
}
