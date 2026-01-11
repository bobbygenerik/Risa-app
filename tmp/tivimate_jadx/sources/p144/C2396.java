package p144;

import j$.util.DesugarCollections;
import java.util.LinkedHashMap;
import java.util.Map;

/* renamed from: ˉᴵ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2396 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C2396 f9258 = new Object();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final Map f9257 = DesugarCollections.synchronizedMap(new LinkedHashMap());

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C2400 m5502(EnumC2397 enumC2397) {
        Object obj = f9257.get(enumC2397);
        if (obj != null) {
            return (C2400) obj;
        }
        throw new IllegalStateException("Cannot get dependency " + enumC2397 + ". Dependencies should be added at class load time.");
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00bb A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x009d A[Catch: all -> 0x00b6, TRY_ENTER, TryCatch #0 {all -> 0x00b6, blocks: (B:12:0x008d, B:23:0x009d, B:24:0x00b5), top: B:11:0x008d }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001f  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x008b -> B:10:0x008c). Please report as a decompilation issue!!! */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m5503(p316.AbstractC3902 r10) {
        /*
            r9 = this;
            boolean r0 = r10 instanceof p144.C2399
            if (r0 == 0) goto L13
            r0 = r10
            ˉᴵ.ⁱˊ r0 = (p144.C2399) r0
            int r1 = r0.f9271
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f9271 = r1
            goto L18
        L13:
            ˉᴵ.ⁱˊ r0 = new ˉᴵ.ⁱˊ
            r0.<init>(r9, r10)
        L18:
            java.lang.Object r10 = r0.f9266
            int r1 = r0.f9271
            r2 = 1
            if (r1 == 0) goto L39
            if (r1 != r2) goto L31
            java.lang.Object r1 = r0.f9270
            java.util.Map r3 = r0.f9264
            ﹶי.ʽ r4 = r0.f9267
            ˉᴵ.ˈ r5 = r0.f9265
            java.util.Iterator r6 = r0.f9268
            java.util.Map r7 = r0.f9263
            p121.AbstractC2026.m5044(r10)
            goto L8c
        L31:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r0)
            throw r10
        L39:
            p121.AbstractC2026.m5044(r10)
            java.util.LinkedHashMap r10 = new java.util.LinkedHashMap
            java.util.Map r1 = p144.C2396.f9257
            int r3 = r1.size()
            int r3 = p430.AbstractC5103.m10040(r3)
            r10.<init>(r3)
            java.util.Set r1 = r1.entrySet()
            java.util.Iterator r1 = r1.iterator()
            r3 = r10
            r6 = r1
        L55:
            boolean r10 = r6.hasNext()
            if (r10 == 0) goto Lbb
            java.lang.Object r10 = r6.next()
            java.util.Map$Entry r10 = (java.util.Map.Entry) r10
            java.lang.Object r1 = r10.getKey()
            java.lang.Object r4 = r10.getKey()
            r5 = r4
            ˉᴵ.ˈ r5 = (p144.EnumC2397) r5
            java.lang.Object r10 = r10.getValue()
            ˉᴵ.ﹳٴ r10 = (p144.C2400) r10
            ﹶי.ʽ r4 = r10.f9273
            r0.f9263 = r3
            r0.f9268 = r6
            r0.f9265 = r5
            r0.f9267 = r4
            r0.f9264 = r3
            r0.f9270 = r1
            r0.f9271 = r2
            java.lang.Object r10 = r4.mo3413(r0)
            ᵢˎ.ﹳٴ r7 = p373.EnumC4532.f16960
            if (r10 != r7) goto L8b
            return r7
        L8b:
            r7 = r3
        L8c:
            r10 = 0
            ˉᴵ.ﹳٴ r8 = m5502(r5)     // Catch: java.lang.Throwable -> Lb6
            ﹳˎ.ʼˎ r8 = r8.f9272     // Catch: java.lang.Throwable -> Lb6
            if (r8 == 0) goto L9d
            r4.mo3416(r10)
            r3.put(r1, r8)
            r3 = r7
            goto L55
        L9d:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> Lb6
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lb6
            java.lang.String r2 = "Subscriber "
            r1.<init>(r2)     // Catch: java.lang.Throwable -> Lb6
            r1.append(r5)     // Catch: java.lang.Throwable -> Lb6
            java.lang.String r2 = " has not been registered."
            r1.append(r2)     // Catch: java.lang.Throwable -> Lb6
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> Lb6
            r0.<init>(r1)     // Catch: java.lang.Throwable -> Lb6
            throw r0     // Catch: java.lang.Throwable -> Lb6
        Lb6:
            r0 = move-exception
            r4.mo3416(r10)
            throw r0
        Lbb:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: p144.C2396.m5503(ᴵʾ.ʽ):java.lang.Object");
    }
}
