package p022;

import java.lang.ref.SoftReference;

/* renamed from: ʼˊ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1050 extends C1048 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C1036 f4130 = new C1036();

    public C1050() {
        new C1036();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p022.C1048
    /* renamed from: ⁱˊ */
    public final void mo3387(byte[] bArr) {
        C1038 c1038;
        C1036 c1036 = this.f4130;
        int length = bArr.length;
        if (length < 32768) {
            return;
        }
        synchronized (c1036) {
            try {
                c1038 = (C1038) c1036.get(Integer.valueOf(length));
                if (c1038 == null) {
                    c1038 = new C1038();
                    c1036.put(Integer.valueOf(length), c1038);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        c1038.m3375(new SoftReference(bArr));
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0021, code lost:
    
        r0 = r0.get();
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0025, code lost:
    
        if (r0 == null) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0027, code lost:
    
        r2 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0015, code lost:
    
        if (r1 == null) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0018, code lost:
    
        r0 = (java.lang.ref.Reference) r1.m3376();
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x001e, code lost:
    
        if (r0 != null) goto L13;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // p022.C1048
    /* renamed from: ﹳٴ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final byte[] mo3388(int r4) {
        /*
            r3 = this;
            ʼˊ.ʽ r0 = r3.f4130
            r1 = 32768(0x8000, float:4.5918E-41)
            r2 = 0
            if (r4 >= r1) goto L9
            goto L28
        L9:
            monitor-enter(r0)
            java.lang.Integer r1 = java.lang.Integer.valueOf(r4)     // Catch: java.lang.Throwable -> L30
            java.lang.Object r1 = r0.get(r1)     // Catch: java.lang.Throwable -> L30
            ʼˊ.ˈ r1 = (p022.C1038) r1     // Catch: java.lang.Throwable -> L30
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L30
            if (r1 != 0) goto L18
            goto L28
        L18:
            java.lang.Object r0 = r1.m3376()
            java.lang.ref.Reference r0 = (java.lang.ref.Reference) r0
            if (r0 != 0) goto L21
            goto L28
        L21:
            java.lang.Object r0 = r0.get()
            if (r0 == 0) goto L18
            r2 = r0
        L28:
            byte[] r2 = (byte[]) r2
            if (r2 != 0) goto L2f
            byte[] r4 = new byte[r4]
            return r4
        L2f:
            return r2
        L30:
            r4 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L30
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: p022.C1050.mo3388(int):byte[]");
    }
}
