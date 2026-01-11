package p047;

import j$.util.DesugarCollections;
import java.util.List;
import p455.InterfaceC5376;

/* renamed from: ʽˑ.ʼᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC1355 implements InterfaceC5376 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final boolean f5208;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final List f5209;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f5210;

    public AbstractC1355(String str, List list, boolean z) {
        this.f5210 = str;
        this.f5209 = DesugarCollections.unmodifiableList(list);
        this.f5208 = z;
    }
}
