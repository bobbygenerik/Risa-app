package androidx.emoji2.text;

import android.content.Context;
import androidx.lifecycle.C0184;
import androidx.lifecycle.InterfaceC0162;
import androidx.lifecycle.ProcessLifecycleInitializer;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import p035.AbstractC1237;
import p166.C2602;
import p166.InterfaceC2601;
import p275.C3508;
import p275.C3525;
import ʿˋ.ʽﹳ;

/* loaded from: classes.dex */
public class EmojiCompatInitializer implements InterfaceC2601 {
    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m411(Context context) {
        Object obj;
        C2602 m5847 = C2602.m5847(context);
        m5847.getClass();
        synchronized (C2602.f9842) {
            try {
                obj = m5847.f9845.get(ProcessLifecycleInitializer.class);
                if (obj == null) {
                    obj = m5847.m5848(ProcessLifecycleInitializer.class, new HashSet());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        C0184 mo691 = ((InterfaceC0162) obj).mo691();
        mo691.m714(new ʽﹳ(this, mo691));
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [ʼﾞ.ᵎⁱ, ـﹶ.ﹳᐧ] */
    @Override // p166.InterfaceC2601
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Object mo412(Context context) {
        ?? abstractC1237 = new AbstractC1237(new C3525(context, 0));
        abstractC1237.f4814 = 1;
        if (C3508.f13826 == null) {
            synchronized (C3508.f13825) {
                try {
                    if (C3508.f13826 == null) {
                        C3508.f13826 = new C3508(abstractC1237);
                    }
                } finally {
                }
            }
        }
        m411(context);
        return Boolean.TRUE;
    }

    @Override // p166.InterfaceC2601
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final List mo413() {
        return Collections.singletonList(ProcessLifecycleInitializer.class);
    }
}
