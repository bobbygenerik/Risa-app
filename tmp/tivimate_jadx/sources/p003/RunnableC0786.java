package p003;

import android.app.job.JobParameters;
import android.content.Context;
import android.content.IntentFilter;
import android.graphics.Rect;
import android.media.metrics.NetworkEvent;
import android.media.metrics.PlaybackErrorEvent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoSchedulerService;
import java.util.ArrayList;
import java.util.List;
import p012.C0882;
import p059.C1520;
import p073.C1643;
import p074.InterfaceC1650;
import p074.InterfaceC1651;
import p095.InterfaceC1881;
import p127.C2144;
import p137.AbstractC2305;
import p212.C2987;
import p212.C2996;
import p223.C3056;
import p229.AbstractC3104;
import p229.C3078;
import p229.C3081;
import p229.C3095;
import p240.C3232;
import p262.C3417;
import p262.C3432;
import p262.C3433;
import p262.InterfaceC3436;
import p299.C3694;
import p305.AbstractC3720;
import p305.C3711;
import p305.C3729;
import p305.RunnableC3730;
import p324.C4030;
import ʽⁱ.ᵎﹶ;

/* renamed from: ʻʿ.ᵔʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0786 implements Runnable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ Object f3274;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f3275;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ Object f3276;

    public /* synthetic */ RunnableC0786(Object obj, int i, Object obj2) {
        this.f3275 = i;
        this.f3276 = obj;
        this.f3274 = obj2;
    }

    public /* synthetic */ RunnableC0786(C0777 c0777, NetworkEvent networkEvent) {
        this.f3275 = 1;
        this.f3276 = c0777;
        this.f3274 = networkEvent;
    }

    public /* synthetic */ RunnableC0786(C0777 c0777, PlaybackErrorEvent playbackErrorEvent) {
        this.f3275 = 2;
        this.f3276 = c0777;
        this.f3274 = playbackErrorEvent;
    }

    public /* synthetic */ RunnableC0786(C2144 c2144, byte[] bArr, List list) {
        this.f3275 = 13;
        this.f3276 = c2144;
        this.f3274 = bArr;
    }

    public /* synthetic */ RunnableC0786(AbstractC3104 abstractC3104, View view, Rect rect) {
        this.f3275 = 20;
        this.f3276 = view;
        this.f3274 = rect;
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    private final void m2879() {
        ((C4030) this.f3276).m8215((C3694) this.f3274);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    private final void m2880() {
        C2996 c2996 = (C2996) this.f3276;
        InterfaceC1650 interfaceC1650 = (InterfaceC1650) this.f3274;
        synchronized (c2996) {
            try {
                if (c2996.f11429 == null) {
                    c2996.f11430.add(interfaceC1650);
                } else {
                    c2996.f11429.add(interfaceC1650.get());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    private final void m2881() {
        C0882 c0882 = (C0882) this.f3276;
        Object apply = ((InterfaceC1881) this.f3274).apply(c0882.f3745);
        c0882.f3745 = apply;
        RunnableC3730 runnableC3730 = new RunnableC3730(c0882, apply, 1);
        C3711 c3711 = (C3711) c0882.f3740;
        if (c3711.f14471.getLooper().getThread().isAlive()) {
            c3711.m7750(runnableC3730);
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    private final void m2882() {
        AbstractC3104.m6725((View) this.f3276, (Rect) this.f3274);
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    private final void m2883() {
        C3095 c3095 = (C3095) this.f3276;
        ViewGroup viewGroup = (ViewGroup) this.f3274;
        ArrayList arrayList = c3095.f11788;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            C3081 c3081 = (C3081) ((ᵎﹶ) ((C3078) obj)).ʾˋ;
            View view = c3081.f11701.f11908;
            if (view != null) {
                AbstractC2305.m5381(c3081.f11709, view, viewGroup);
            }
        }
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    private final void m2884() {
        C3729 c3729 = (C3729) this.f3276;
        Context context = (Context) this.f3274;
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        context.registerReceiver(new C1520(3, c3729), intentFilter);
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    private final void m2885() {
        C1643 c1643 = (C1643) this.f3276;
        ((C3433) c1643.f6683).m7335((C3432) this.f3274, 3);
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    private final void m2886() {
        JobInfoSchedulerService jobInfoSchedulerService = (JobInfoSchedulerService) this.f3276;
        JobParameters jobParameters = (JobParameters) this.f3274;
        int i = JobInfoSchedulerService.f1715;
        jobInfoSchedulerService.jobFinished(jobParameters, false);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    private final void m2887() {
        InterfaceC1651 interfaceC1651;
        C2987 c2987 = (C2987) this.f3276;
        InterfaceC1650 interfaceC1650 = (InterfaceC1650) this.f3274;
        if (c2987.f11402 != C2987.f11401) {
            throw new IllegalStateException("provide() can be called only once.");
        }
        synchronized (c2987) {
            interfaceC1651 = c2987.f11403;
            c2987.f11403 = null;
            c2987.f11402 = interfaceC1650;
        }
        interfaceC1651.mo2818(interfaceC1650);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0244 A[Catch: IllegalArgumentException -> 0x00d9, ParserException -> 0x00dc, TryCatch #0 {ParserException -> 0x00dc, blocks: (B:21:0x00b9, B:24:0x00df, B:26:0x00e3, B:27:0x00e6, B:29:0x00ee, B:31:0x00f6, B:33:0x0102, B:34:0x0104, B:36:0x0124, B:38:0x0147, B:40:0x014f, B:41:0x015a, B:43:0x0155, B:44:0x015f, B:46:0x0163, B:48:0x0167, B:51:0x017a, B:53:0x0180, B:55:0x0192, B:58:0x0195, B:61:0x019d, B:62:0x01a4, B:63:0x01a5, B:65:0x01c5, B:66:0x01c8, B:67:0x01cd, B:68:0x01ce, B:71:0x01dc, B:74:0x01e7, B:77:0x01fc, B:78:0x0203, B:79:0x0204, B:81:0x020c, B:86:0x022b, B:91:0x023b, B:93:0x0244, B:96:0x0255, B:97:0x025d, B:101:0x0227, B:102:0x020f, B:103:0x0271, B:105:0x0276, B:109:0x028a, B:111:0x0290, B:114:0x029d, B:116:0x02a5, B:118:0x02c4), top: B:11:0x00a7 }] */
    /* JADX WARN: Type inference failed for: r0v36, types: [java.io.IOException, androidx.media3.exoplayer.rtsp.RtspMediaSource$RtspPlaybackException] */
    /* JADX WARN: Type inference failed for: r0v57, types: [java.io.IOException, androidx.media3.exoplayer.rtsp.RtspMediaSource$RtspPlaybackException] */
    /* JADX WARN: Type inference failed for: r2v44, types: [androidx.media3.exoplayer.rtsp.RtspMediaSource$RtspPlaybackException] */
    /* JADX WARN: Type inference failed for: r2v51 */
    /* JADX WARN: Type inference failed for: r2v52 */
    /* JADX WARN: Type inference failed for: r2v9, types: [java.io.IOException, androidx.media3.exoplayer.rtsp.RtspMediaSource$RtspPlaybackException] */
    /* JADX WARN: Type inference failed for: r8v8, types: [ʼʻ.ˊʻ, ʼʻ.ʽʽ] */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void m2888() {
        /*
            Method dump skipped, instructions count: 1140
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p003.RunnableC0786.m2888():void");
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    private final void m2889() {
        C1520 c1520 = (C1520) this.f3276;
        Context context = (Context) this.f3274;
        C3729 c3729 = (C3729) c1520.f5996;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        int i = 0;
        if (connectivityManager != null) {
            try {
                NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                    int type = activeNetworkInfo.getType();
                    if (type != 0) {
                        if (type != 1) {
                            if (type != 4 && type != 5) {
                                if (type != 6) {
                                    i = type != 9 ? 8 : 7;
                                }
                                i = 5;
                            }
                        }
                        i = 2;
                    }
                    switch (activeNetworkInfo.getSubtype()) {
                        case 1:
                        case 2:
                            i = 3;
                            break;
                        case 3:
                        case 4:
                        case 5:
                        case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                        case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                        case C3056.BYTES_FIELD_NUMBER /* 8 */:
                        case 9:
                        case 10:
                        case 11:
                        case 12:
                        case 14:
                        case 15:
                        case 17:
                            i = 4;
                            break;
                        case 13:
                            i = 5;
                            break;
                        case 16:
                        case 19:
                        default:
                            i = 6;
                            break;
                        case 18:
                            i = 2;
                            break;
                        case 20:
                            if (Build.VERSION.SDK_INT >= 29) {
                                i = 9;
                                break;
                            }
                            break;
                    }
                } else {
                    i = 1;
                }
            } catch (SecurityException unused) {
            }
        }
        if (Build.VERSION.SDK_INT < 31 || i != 5) {
            c3729.m7837(i);
        } else {
            AbstractC3720.m7819(context, c3729);
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    private final void m2890() {
        C3417 c3417 = (C3417) this.f3276;
        C3232 c3232 = (C3232) this.f3274;
        synchronized (c3417.f13417) {
            try {
                ArrayList arrayList = c3417.f13414;
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    ((InterfaceC3436) obj).mo1037(c3232, false);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:207:0x05f7, code lost:
    
        if (ar.tvplayer.core.domain.ᵎⁱ.ʽ().length() == ar.tvplayer.core.domain.ᵎⁱ.יـ()) goto L296;
     */
    /* JADX WARN: Code restructure failed: missing block: B:278:0x021c, code lost:
    
        if (ar.tvplayer.core.domain.ᵎⁱ.ʽ().length() == ar.tvplayer.core.domain.ᵎⁱ.יـ()) goto L133;
     */
    /* JADX WARN: Removed duplicated region for block: B:107:0x042c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:128:0x049e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:187:0x063e  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x07a7 A[LOOP:6: B:234:0x04f2->B:236:0x07a7, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:237:0x04ff A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:253:0x07b3 A[LOOP:7: B:251:0x0465->B:253:0x07b3, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:266:0x03ec  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0290  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 2464
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p003.RunnableC0786.run():void");
    }
}
