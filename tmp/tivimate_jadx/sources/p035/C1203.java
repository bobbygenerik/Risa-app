package p035;

import android.content.Context;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashSet;
import java.util.concurrent.Executor;
import p034.InterfaceC1191;
import p152.AbstractC2443;
import p152.C2461;
import p362.AbstractC4399;
import ʿʿ.ﹳٴ;
import ٴﾞ.ˆʾ;

/* renamed from: ʼﾞ.ʽʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1203 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public boolean f4644;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public boolean f4645;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final String f4646;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public Executor f4654;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public InterfaceC1191 f4656;

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public boolean f4657;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Context f4658;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C2461 f4659;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public Executor f4662;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final ArrayList f4648 = new ArrayList();

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final ArrayList f4651 = new ArrayList();

    /* renamed from: יـ, reason: contains not printable characters */
    public final int f4652 = 1;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final long f4647 = -1;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final C1213 f4653 = new C1213(0);

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final LinkedHashSet f4661 = new LinkedHashSet();

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final LinkedHashSet f4649 = new LinkedHashSet();

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final ArrayList f4655 = new ArrayList();

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public boolean f4650 = true;

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final boolean f4660 = true;

    public C1203(Context context, Class cls, String str) {
        this.f4659 = AbstractC2443.m5561(cls);
        this.f4658 = context;
        this.f4646 = str;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m3744() {
        this.f4650 = true;
        this.f4645 = true;
        this.f4657 = true;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m3745(ˆʾ r1) {
        this.f4656 = r1;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m3746(ﹳٴ r1) {
        this.f4662 = r1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:88:0x0203, code lost:
    
        throw new java.lang.IllegalArgumentException("Unexpected auto migration specs found. Annotate AutoMigrationSpec implementation with @ProvidedAutoMigrationSpec annotation or remove this spec from the builder.");
     */
    /* JADX WARN: Removed duplicated region for block: B:154:0x036c  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x038b  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x0375 A[LOOP:9: B:169:0x0375->B:173:0x037e, LOOP_START, PHI: r2
      0x0375: PHI (r2v31 ʼﹶ.ˈ) = (r2v30 ʼﹶ.ˈ), (r2v33 ʼﹶ.ˈ) binds: [B:156:0x0371, B:173:0x037e] A[DONT_GENERATE, DONT_INLINE]] */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p035.AbstractC1219 m3747() {
        /*
            Method dump skipped, instructions count: 1055
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p035.C1203.m3747():ʼﾞ.ˊʻ");
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m3748(AbstractC4399... abstractC4399Arr) {
        for (AbstractC4399 abstractC4399 : abstractC4399Arr) {
            Integer valueOf = Integer.valueOf(abstractC4399.f16361);
            LinkedHashSet linkedHashSet = this.f4649;
            linkedHashSet.add(valueOf);
            linkedHashSet.add(Integer.valueOf(abstractC4399.f16360));
        }
        AbstractC4399[] abstractC4399Arr2 = (AbstractC4399[]) Arrays.copyOf(abstractC4399Arr, abstractC4399Arr.length);
        C1213 c1213 = this.f4653;
        c1213.getClass();
        for (AbstractC4399 abstractC43992 : abstractC4399Arr2) {
            c1213.m3756(abstractC43992);
        }
    }
}
