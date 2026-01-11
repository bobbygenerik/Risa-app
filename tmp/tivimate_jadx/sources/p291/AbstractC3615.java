package p291;

import j$.util.DesugarCollections;
import java.math.RoundingMode;
import java.util.Collections;
import java.util.List;
import p017.AbstractC0993;
import p055.C1495;
import p274.InterfaceC3486;
import p305.AbstractC3712;
import p305.AbstractC3731;

/* renamed from: ٴᴵ.ˉʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3615 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final long f14147;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C1495 f14148;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final List f14149;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final AbstractC0993 f14150;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final C3613 f14151;

    public AbstractC3615(C1495 c1495, List list, AbstractC3618 abstractC3618, List list2) {
        AbstractC3731.m7849(!list.isEmpty());
        this.f14148 = c1495;
        this.f14150 = AbstractC0993.m3264(list);
        this.f14149 = list2 == null ? Collections.EMPTY_LIST : DesugarCollections.unmodifiableList(list2);
        this.f14151 = abstractC3618.mo7572(this);
        long j = abstractC3618.f14159;
        long j2 = abstractC3618.f14160;
        String str = AbstractC3712.f14481;
        this.f14147 = AbstractC3712.m7797(j, 1000000L, j2, RoundingMode.DOWN);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public abstract InterfaceC3486 mo7577();

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public abstract C3613 mo7578();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public abstract String mo7579();
}
