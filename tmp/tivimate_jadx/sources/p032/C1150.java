package p032;

import android.media.MediaCodecInfo;
import android.os.Build;
import java.util.List;

/* renamed from: ʼᵢ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C1150 implements InterfaceC1170, InterfaceC1149 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public static final C1150 f4414 = new Object();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static /* bridge */ /* synthetic */ MediaCodecInfo.VideoCapabilities.PerformancePoint m3582(Object obj) {
        return (MediaCodecInfo.VideoCapabilities.PerformancePoint) obj;
    }

    @Override // p032.InterfaceC1149
    /* renamed from: ʽ */
    public int mo3581(Object obj) {
        String str = ((C1165) obj).f4462;
        if (str.startsWith("OMX.google") || str.startsWith("c2.android")) {
            return 1;
        }
        return (Build.VERSION.SDK_INT >= 26 || !str.equals("OMX.MTK.AUDIO.DECODER.RAW")) ? 0 : -1;
    }

    @Override // p032.InterfaceC1170
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public List mo3583(String str, boolean z, boolean z2) {
        return AbstractC1162.m3620(str, z, z2);
    }
}
