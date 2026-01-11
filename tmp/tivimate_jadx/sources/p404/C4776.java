package p404;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import p071.C1631;

/* renamed from: ﹳʽ.ʼʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4776 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C1631 f18016 = C1631.m4412(new byte[0]);

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final HashMap f18017;

    public C4776(HashMap hashMap) {
        this.f18017 = hashMap;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Iterable m9547(byte[] bArr) {
        List list;
        C1631 c1631 = f18016;
        HashMap hashMap = this.f18017;
        List list2 = (List) hashMap.get(c1631);
        if (bArr.length >= 5) {
            list = (List) hashMap.get(new C1631(5 > bArr.length ? bArr.length : 5, bArr));
        } else {
            list = null;
        }
        return (list2 == null && list == null) ? new ArrayList() : list2 == null ? list : list == null ? list2 : new C4783(list, list2);
    }
}
