package p411;

import android.content.Context;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import p070.C1629;
import p122.C2040;
import p122.C2082;
import p122.C2115;
import p137.AbstractC2305;
import p262.C3433;
import ˏˆ.ﹳٴ;

/* renamed from: ﹳˎ.ﹳᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4907 {

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static final String f18316;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final HashMap f18317;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C4906 f18318;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C3433 f18319;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C1629 f18320;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C4887 f18321;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Context f18322;

    static {
        HashMap hashMap = new HashMap();
        f18317 = hashMap;
        AbstractC2305.m5371(5, hashMap, "armeabi", 6, "armeabi-v7a");
        AbstractC2305.m5371(9, hashMap, "arm64-v8a", 0, "x86");
        hashMap.put("x86_64", 1);
        Locale locale = Locale.US;
        f18316 = "Crashlytics Android SDK/20.0.0";
    }

    public C4907(Context context, C4887 c4887, C4906 c4906, C3433 c3433, C1629 c1629) {
        this.f18322 = context;
        this.f18321 = c4887;
        this.f18318 = c4906;
        this.f18319 = c3433;
        this.f18320 = c1629;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static C2082 m9712(ﹳٴ r7, int i) {
        String str = (String) r7.ʽʽ;
        String str2 = (String) r7.ᴵˊ;
        StackTraceElement[] stackTraceElementArr = (StackTraceElement[]) r7.ˈٴ;
        int i2 = 0;
        if (stackTraceElementArr == null) {
            stackTraceElementArr = new StackTraceElement[0];
        }
        ﹳٴ r72 = (ﹳٴ) r7.ᴵᵔ;
        if (i >= 8) {
            ﹳٴ r4 = r72;
            while (r4 != null) {
                r4 = (ﹳٴ) r4.ᴵᵔ;
                i2++;
            }
        }
        int i3 = i2;
        List m9713 = m9713(stackTraceElementArr, 4);
        if (m9713 == null) {
            throw new NullPointerException("Null frames");
        }
        byte b = (byte) (0 | 1);
        C2082 c2082 = null;
        if (r72 != null && i3 == 0) {
            c2082 = m9712(r72, i + 1);
        }
        if (b == 1) {
            return new C2082(str, str2, m9713, c2082, i3);
        }
        StringBuilder sb = new StringBuilder();
        if ((b & 1) == 0) {
            sb.append(" overflowCount");
        }
        throw new IllegalStateException(AbstractC4892.m9682("Missing required properties:", sb));
    }

    /* JADX WARN: Type inference failed for: r4v0, types: [java.lang.Object, ˈˋ.ᴵˑ] */
    /* renamed from: ˈ, reason: contains not printable characters */
    public static List m9713(StackTraceElement[] stackTraceElementArr, int i) {
        ArrayList arrayList = new ArrayList();
        for (StackTraceElement stackTraceElement : stackTraceElementArr) {
            ?? obj = new Object();
            obj.f8208 = i;
            obj.f8211 = (byte) (obj.f8211 | 4);
            long j = 0;
            long max = stackTraceElement.isNativeMethod() ? Math.max(stackTraceElement.getLineNumber(), 0L) : 0L;
            String str = stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName();
            String fileName = stackTraceElement.getFileName();
            if (!stackTraceElement.isNativeMethod() && stackTraceElement.getLineNumber() > 0) {
                j = stackTraceElement.getLineNumber();
            }
            obj.f8210 = max;
            byte b = (byte) (obj.f8211 | 1);
            obj.f8211 = b;
            if (str == null) {
                throw new NullPointerException("Null symbol");
            }
            obj.f8209 = str;
            obj.f8206 = fileName;
            obj.f8207 = j;
            obj.f8211 = (byte) (b | 2);
            arrayList.add(obj.m5082());
        }
        return DesugarCollections.unmodifiableList(arrayList);
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static C2115 m9714() {
        byte b = (byte) 1;
        if (b == 1) {
            return new C2115(0L, "0", "0");
        }
        StringBuilder sb = new StringBuilder();
        if (b == 0) {
            sb.append(" address");
        }
        throw new IllegalStateException(AbstractC4892.m9682("Missing required properties:", sb));
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0058 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00a4  */
    /* JADX WARN: Type inference failed for: r2v9, types: [java.lang.Object, ˈˋ.ᵎᵔ] */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p122.C2094 m9715(int r17) {
        /*
            Method dump skipped, instructions count: 238
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p411.C4907.m9715(int):ˈˋ.ᐧﾞ");
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final List m9716() {
        byte b = (byte) (((byte) (0 | 1)) | 2);
        C4906 c4906 = this.f18318;
        String str = c4906.f18310;
        if (str == null) {
            throw new NullPointerException("Null name");
        }
        String str2 = c4906.f18313;
        if (b == 3) {
            return Collections.singletonList(new C2040(0L, 0L, str, str2));
        }
        StringBuilder sb = new StringBuilder();
        if ((b & 1) == 0) {
            sb.append(" baseAddress");
        }
        if ((b & 2) == 0) {
            sb.append(" size");
        }
        throw new IllegalStateException(AbstractC4892.m9682("Missing required properties:", sb));
    }
}
