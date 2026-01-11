package p023;

import android.support.v4.media.session.ⁱˊ;
import java.util.concurrent.atomic.AtomicBoolean;
import p035.EnumC1223;
import p035.InterfaceC1221;
import p316.AbstractC3906;
import p329.InterfaceC4087;
import p417.InterfaceC4932;
import p430.C5109;

/* renamed from: ʼˋ.ـˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1064 implements InterfaceC1221, InterfaceC1056 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C5109 f4198 = new C5109();

    /* renamed from: ˈ, reason: contains not printable characters */
    public final AtomicBoolean f4199 = new AtomicBoolean(false);

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final boolean f4200;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C1067 f4201;

    public C1064(C1067 c1067, boolean z) {
        this.f4201 = c1067;
        this.f4200 = z;
    }

    @Override // p035.InterfaceC1221
    /* renamed from: ʽ, reason: contains not printable characters */
    public final Object mo3405(EnumC1223 enumC1223, InterfaceC4087 interfaceC4087, AbstractC3906 abstractC3906) {
        if (this.f4199.get()) {
            ⁱˊ.ʻٴ(21, "Connection is recycled");
            throw null;
        }
        C1070 c1070 = (C1070) abstractC3906.f15166.mo3419(C1070.f4216);
        if (c1070 != null && c1070.f4217 == this) {
            return m3408(enumC1223, interfaceC4087, abstractC3906);
        }
        ⁱˊ.ʻٴ(21, "Attempted to use connection on a different coroutine");
        throw null;
    }

    @Override // p035.InterfaceC1221
    /* renamed from: ˈ, reason: contains not printable characters */
    public final Object mo3406(AbstractC3906 abstractC3906) {
        if (this.f4199.get()) {
            ⁱˊ.ʻٴ(21, "Connection is recycled");
            throw null;
        }
        C1070 c1070 = (C1070) abstractC3906.f15166.mo3419(C1070.f4216);
        if (c1070 != null && c1070.f4217 == this) {
            return Boolean.valueOf(!this.f4198.isEmpty());
        }
        ⁱˊ.ʻٴ(21, "Attempted to use connection on a different coroutine");
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x005d A[Catch: all -> 0x006e, TryCatch #0 {all -> 0x006e, blocks: (B:12:0x0051, B:14:0x005d, B:19:0x0068, B:20:0x0096, B:24:0x0070, B:25:0x0075, B:26:0x0076, B:27:0x007c, B:28:0x0082), top: B:11:0x0051 }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0082 A[Catch: all -> 0x006e, TryCatch #0 {all -> 0x006e, blocks: (B:12:0x0051, B:14:0x005d, B:19:0x0068, B:20:0x0096, B:24:0x0070, B:25:0x0075, B:26:0x0076, B:27:0x007c, B:28:0x0082), top: B:11:0x0051 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m3407(p035.EnumC1223 r8, p316.AbstractC3902 r9) {
        /*
            r7 = this;
            java.lang.String r0 = "SAVEPOINT '"
            boolean r1 = r9 instanceof p023.C1063
            if (r1 == 0) goto L15
            r1 = r9
            ʼˋ.יـ r1 = (p023.C1063) r1
            int r2 = r1.f4197
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L15
            int r2 = r2 - r3
            r1.f4197 = r2
            goto L1a
        L15:
            ʼˋ.יـ r1 = new ʼˋ.יـ
            r1.<init>(r7, r9)
        L1a:
            java.lang.Object r9 = r1.f4195
            int r2 = r1.f4197
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            ʼˋ.ᵔᵢ r8 = r1.f4194
            ʼﾞ.ˑٴ r2 = r1.f4196
            ʼˋ.ـˆ r1 = r1.f4192
            p121.AbstractC2026.m5044(r9)
            r9 = r8
            r8 = r2
            goto L50
        L2f:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L37:
            p121.AbstractC2026.m5044(r9)
            r1.f4192 = r7
            r1.f4196 = r8
            ʼˋ.ᵔᵢ r9 = r7.f4201
            r1.f4194 = r9
            r1.f4197 = r3
            ﹶי.ʽ r2 = r9.f4213
            java.lang.Object r1 = r2.mo3413(r1)
            ᵢˎ.ﹳٴ r2 = p373.EnumC4532.f16960
            if (r1 != r2) goto L4f
            return r2
        L4f:
            r1 = r7
        L50:
            r2 = 0
            ﹶˈ.ᵔᵢ r4 = r1.f4198     // Catch: java.lang.Throwable -> L6e
            ʼˋ.ᵔᵢ r1 = r1.f4201     // Catch: java.lang.Throwable -> L6e
            int r5 = r4.f19212     // Catch: java.lang.Throwable -> L6e
            boolean r6 = r4.isEmpty()     // Catch: java.lang.Throwable -> L6e
            if (r6 == 0) goto L82
            int r8 = r8.ordinal()     // Catch: java.lang.Throwable -> L6e
            if (r8 == 0) goto L7c
            if (r8 == r3) goto L76
            r0 = 2
            if (r8 != r0) goto L70
            java.lang.String r8 = "BEGIN EXCLUSIVE TRANSACTION"
            android.support.v4.media.session.ⁱˊ.ˑﹳ(r1, r8)     // Catch: java.lang.Throwable -> L6e
            goto L96
        L6e:
            r8 = move-exception
            goto La4
        L70:
            kotlin.NoWhenBranchMatchedException r8 = new kotlin.NoWhenBranchMatchedException     // Catch: java.lang.Throwable -> L6e
            r8.<init>()     // Catch: java.lang.Throwable -> L6e
            throw r8     // Catch: java.lang.Throwable -> L6e
        L76:
            java.lang.String r8 = "BEGIN IMMEDIATE TRANSACTION"
            android.support.v4.media.session.ⁱˊ.ˑﹳ(r1, r8)     // Catch: java.lang.Throwable -> L6e
            goto L96
        L7c:
            java.lang.String r8 = "BEGIN DEFERRED TRANSACTION"
            android.support.v4.media.session.ⁱˊ.ˑﹳ(r1, r8)     // Catch: java.lang.Throwable -> L6e
            goto L96
        L82:
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L6e
            r8.<init>(r0)     // Catch: java.lang.Throwable -> L6e
            r8.append(r5)     // Catch: java.lang.Throwable -> L6e
            r0 = 39
            r8.append(r0)     // Catch: java.lang.Throwable -> L6e
            java.lang.String r8 = r8.toString()     // Catch: java.lang.Throwable -> L6e
            android.support.v4.media.session.ⁱˊ.ˑﹳ(r1, r8)     // Catch: java.lang.Throwable -> L6e
        L96:
            ʼˋ.ﹳᐧ r8 = new ʼˋ.ﹳᐧ     // Catch: java.lang.Throwable -> L6e
            r8.<init>(r5)     // Catch: java.lang.Throwable -> L6e
            r4.addLast(r8)     // Catch: java.lang.Throwable -> L6e
            ʻᵢ.ʼᐧ r8 = p013.C0907.f3832     // Catch: java.lang.Throwable -> L6e
            r9.mo3416(r2)
            return r8
        La4:
            r9.mo3416(r2)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: p023.C1064.m3407(ʼﾞ.ˑٴ, ᴵʾ.ʽ):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00a8 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m3408(p035.EnumC1223 r10, p329.InterfaceC4087 r11, p316.AbstractC3902 r12) {
        /*
            Method dump skipped, instructions count: 198
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p023.C1064.m3408(ʼﾞ.ˑٴ, ᴵⁱ.ʼᐧ, ᴵʾ.ʽ):java.lang.Object");
    }

    @Override // p023.InterfaceC1056
    /* renamed from: ⁱˊ */
    public final InterfaceC4932 mo3398() {
        return this.f4201;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    @Override // p035.InterfaceC1206
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object mo3409(java.lang.String r6, p329.InterfaceC4106 r7, p316.AbstractC3902 r8) {
        /*
            r5 = this;
            boolean r0 = r8 instanceof p023.C1051
            if (r0 == 0) goto L13
            r0 = r8
            ʼˋ.ʻٴ r0 = (p023.C1051) r0
            int r1 = r0.f4134
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f4134 = r1
            goto L18
        L13:
            ʼˋ.ʻٴ r0 = new ʼˋ.ʻٴ
            r0.<init>(r5, r8)
        L18:
            java.lang.Object r8 = r0.f4132
            int r1 = r0.f4134
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L38
            if (r1 != r2) goto L30
            ʼˋ.ᵔᵢ r6 = r0.f4135
            ᴵⁱ.ﾞʻ r7 = r0.f4133
            java.lang.String r1 = r0.f4136
            ʼˋ.ـˆ r0 = r0.f4131
            p121.AbstractC2026.m5044(r8)
            r8 = r6
            r6 = r1
            goto L6d
        L30:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L38:
            p121.AbstractC2026.m5044(r8)
            java.util.concurrent.atomic.AtomicBoolean r8 = r5.f4199
            boolean r8 = r8.get()
            r1 = 21
            if (r8 != 0) goto L98
            ˈי.ᵔᵢ r8 = r0.f15166
            ᵎˉ.ⁱˊ r4 = p023.C1070.f4216
            ˈי.ﾞᴵ r8 = r8.mo3419(r4)
            ʼˋ.ﹳٴ r8 = (p023.C1070) r8
            if (r8 == 0) goto L92
            ʼˋ.ـˆ r8 = r8.f4217
            if (r8 != r5) goto L92
            r0.f4131 = r5
            r0.f4136 = r6
            r0.f4133 = r7
            ʼˋ.ᵔᵢ r8 = r5.f4201
            r0.f4135 = r8
            r0.f4134 = r2
            ﹶי.ʽ r1 = r8.f4213
            java.lang.Object r0 = r1.mo3413(r0)
            ᵢˎ.ﹳٴ r1 = p373.EnumC4532.f16960
            if (r0 != r1) goto L6c
            return r1
        L6c:
            r0 = r5
        L6d:
            ʼˋ.ʼᐧ r1 = new ʼˋ.ʼᐧ     // Catch: java.lang.Throwable -> L85
            ʼˋ.ᵔᵢ r2 = r0.f4201     // Catch: java.lang.Throwable -> L85
            ﹳᴵ.ﹳٴ r2 = r2.f4211     // Catch: java.lang.Throwable -> L85
            ﹳᴵ.ʽ r6 = r2.mo3415(r6)     // Catch: java.lang.Throwable -> L85
            r1.<init>(r0, r6)     // Catch: java.lang.Throwable -> L85
            java.lang.Object r6 = r7.mo3844(r1)     // Catch: java.lang.Throwable -> L87
            ﹳˋ.ٴﹶ.ᵔᵢ(r1, r3)     // Catch: java.lang.Throwable -> L85
            r8.mo3416(r3)
            return r6
        L85:
            r6 = move-exception
            goto L8e
        L87:
            r6 = move-exception
            throw r6     // Catch: java.lang.Throwable -> L89
        L89:
            r7 = move-exception
            ﹳˋ.ٴﹶ.ᵔᵢ(r1, r6)     // Catch: java.lang.Throwable -> L85
            throw r7     // Catch: java.lang.Throwable -> L85
        L8e:
            r8.mo3416(r3)
            throw r6
        L92:
            java.lang.String r6 = "Attempted to use connection on a different coroutine"
            android.support.v4.media.session.ⁱˊ.ʻٴ(r1, r6)
            throw r3
        L98:
            java.lang.String r6 = "Connection is recycled"
            android.support.v4.media.session.ⁱˊ.ʻٴ(r1, r6)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: p023.C1064.mo3409(java.lang.String, ᴵⁱ.ﾞʻ, ᴵʾ.ʽ):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x005b A[Catch: all -> 0x0074, TryCatch #0 {all -> 0x0074, blocks: (B:12:0x0051, B:14:0x005b, B:16:0x0065, B:18:0x006e, B:19:0x00ab, B:23:0x0076, B:24:0x008b, B:26:0x0091, B:27:0x0097, B:28:0x00b1, B:29:0x00b8), top: B:11:0x0051 }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00b1 A[Catch: all -> 0x0074, TRY_ENTER, TryCatch #0 {all -> 0x0074, blocks: (B:12:0x0051, B:14:0x005b, B:16:0x0065, B:18:0x006e, B:19:0x00ab, B:23:0x0076, B:24:0x008b, B:26:0x0091, B:27:0x0097, B:28:0x00b1, B:29:0x00b8), top: B:11:0x0051 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m3410(boolean r8, p316.AbstractC3902 r9) {
        /*
            r7 = this;
            java.lang.String r0 = "ROLLBACK TRANSACTION TO SAVEPOINT '"
            java.lang.String r1 = "RELEASE SAVEPOINT '"
            boolean r2 = r9 instanceof p023.C1061
            if (r2 == 0) goto L17
            r2 = r9
            ʼˋ.ˏי r2 = (p023.C1061) r2
            int r3 = r2.f4181
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            r5 = r3 & r4
            if (r5 == 0) goto L17
            int r3 = r3 - r4
            r2.f4181 = r3
            goto L1c
        L17:
            ʼˋ.ˏי r2 = new ʼˋ.ˏי
            r2.<init>(r7, r9)
        L1c:
            java.lang.Object r9 = r2.f4179
            int r3 = r2.f4181
            r4 = 1
            if (r3 == 0) goto L37
            if (r3 != r4) goto L2f
            boolean r8 = r2.f4178
            ʼˋ.ᵔᵢ r3 = r2.f4180
            ʼˋ.ـˆ r2 = r2.f4176
            p121.AbstractC2026.m5044(r9)
            goto L50
        L2f:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L37:
            p121.AbstractC2026.m5044(r9)
            r2.f4176 = r7
            ʼˋ.ᵔᵢ r3 = r7.f4201
            r2.f4180 = r3
            r2.f4178 = r8
            r2.f4181 = r4
            ﹶי.ʽ r9 = r3.f4213
            java.lang.Object r9 = r9.mo3413(r2)
            ᵢˎ.ﹳٴ r2 = p373.EnumC4532.f16960
            if (r9 != r2) goto L4f
            return r2
        L4f:
            r2 = r7
        L50:
            r9 = 0
            ﹶˈ.ᵔᵢ r4 = r2.f4198     // Catch: java.lang.Throwable -> L74
            ʼˋ.ᵔᵢ r2 = r2.f4201     // Catch: java.lang.Throwable -> L74
            boolean r5 = r4.isEmpty()     // Catch: java.lang.Throwable -> L74
            if (r5 != 0) goto Lb1
            java.lang.Object r5 = p430.AbstractC5099.m10019(r4)     // Catch: java.lang.Throwable -> L74
            ʼˋ.ﹳᐧ r5 = (p023.C1071) r5     // Catch: java.lang.Throwable -> L74
            r6 = 39
            if (r8 == 0) goto L8b
            r5.getClass()     // Catch: java.lang.Throwable -> L74
            boolean r8 = r4.isEmpty()     // Catch: java.lang.Throwable -> L74
            if (r8 == 0) goto L76
            java.lang.String r8 = "END TRANSACTION"
            android.support.v4.media.session.ⁱˊ.ˑﹳ(r2, r8)     // Catch: java.lang.Throwable -> L74
            goto Lab
        L74:
            r8 = move-exception
            goto Lb9
        L76:
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L74
            r8.<init>(r1)     // Catch: java.lang.Throwable -> L74
            int r0 = r5.f4218     // Catch: java.lang.Throwable -> L74
            r8.append(r0)     // Catch: java.lang.Throwable -> L74
            r8.append(r6)     // Catch: java.lang.Throwable -> L74
            java.lang.String r8 = r8.toString()     // Catch: java.lang.Throwable -> L74
            android.support.v4.media.session.ⁱˊ.ˑﹳ(r2, r8)     // Catch: java.lang.Throwable -> L74
            goto Lab
        L8b:
            boolean r8 = r4.isEmpty()     // Catch: java.lang.Throwable -> L74
            if (r8 == 0) goto L97
            java.lang.String r8 = "ROLLBACK TRANSACTION"
            android.support.v4.media.session.ⁱˊ.ˑﹳ(r2, r8)     // Catch: java.lang.Throwable -> L74
            goto Lab
        L97:
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L74
            r8.<init>(r0)     // Catch: java.lang.Throwable -> L74
            int r0 = r5.f4218     // Catch: java.lang.Throwable -> L74
            r8.append(r0)     // Catch: java.lang.Throwable -> L74
            r8.append(r6)     // Catch: java.lang.Throwable -> L74
            java.lang.String r8 = r8.toString()     // Catch: java.lang.Throwable -> L74
            android.support.v4.media.session.ⁱˊ.ˑﹳ(r2, r8)     // Catch: java.lang.Throwable -> L74
        Lab:
            ʻᵢ.ʼᐧ r8 = p013.C0907.f3832     // Catch: java.lang.Throwable -> L74
            r3.mo3416(r9)
            return r8
        Lb1:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L74
            java.lang.String r0 = "Not in a transaction"
            r8.<init>(r0)     // Catch: java.lang.Throwable -> L74
            throw r8     // Catch: java.lang.Throwable -> L74
        Lb9:
            r3.mo3416(r9)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: p023.C1064.m3410(boolean, ᴵʾ.ʽ):java.lang.Object");
    }
}
