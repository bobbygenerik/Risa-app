package p052;

import java.lang.reflect.Type;

/* renamed from: ʽᴵ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1428 implements InterfaceC1419 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f5585;

    public /* synthetic */ C1428(int i) {
        this.f5585 = i;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static void m4191(Type type, Class cls) {
        Class<?> m4154 = AbstractC1414.m4154(type);
        if (cls.isAssignableFrom(m4154)) {
            throw new IllegalArgumentException("No JsonAdapter for " + type + ", you should probably use " + cls.getSimpleName() + " instead of " + m4154.getSimpleName() + " (Moshi only supports the collection interfaces by default) or else register a custom JsonAdapter.");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:206:0x03e5  */
    /* JADX WARN: Type inference failed for: r18v0 */
    /* JADX WARN: Type inference failed for: r18v1, types: [java.util.Set] */
    /* JADX WARN: Type inference failed for: r18v2 */
    /* JADX WARN: Type inference failed for: r18v4 */
    /* JADX WARN: Type inference failed for: r18v6 */
    @Override // p052.InterfaceC1419
    /* renamed from: ﹳٴ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p052.AbstractC1430 mo4174(java.lang.reflect.Type r21, java.util.Set r22, p052.C1407 r23) {
        /*
            Method dump skipped, instructions count: 1430
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p052.C1428.mo4174(java.lang.reflect.Type, java.util.Set, ʽᴵ.ʾˋ):ʽᴵ.ﾞʻ");
    }
}
