package p398;

import com.rapid7.helper.smbj.io.SMB2Exception;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.nio.channels.InterruptedByTimeoutException;
import java.util.EnumSet;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import p033.AbstractC1179;
import p033.C1181;
import p033.EnumC1175;
import p052.C1417;
import p250.C3304;
import p284.EnumC3571;
import p289.C3602;

/* renamed from: ⁱᵢ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4747 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final long f17906;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final EnumC1175 f17907;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final long f17908;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C3304 f17909;

    public AbstractC4747(C3304 c3304) {
        C3602 c3602 = c3304.f12708;
        this.f17907 = (EnumC1175) ((C1417) c3602.f14088.f9920).f5547;
        this.f17909 = c3304;
        this.f17906 = c3304.f12707;
        this.f17908 = c3602.f14086.f11364;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final AbstractC1179 m9484(AbstractC1179 abstractC1179, EnumSet enumSet) {
        try {
            try {
                AbstractC1179 abstractC11792 = (AbstractC1179) this.f17909.m7113(abstractC1179).f10521.get(this.f17908, TimeUnit.MILLISECONDS);
                C1181 c1181 = (C1181) abstractC11792.ˊᵔ();
                if (enumSet.contains(EnumC3571.m7526(c1181.f4580))) {
                    return abstractC11792;
                }
                throw new SMB2Exception(c1181, "expected=" + enumSet);
            } catch (InterruptedException e) {
                InterruptedIOException interruptedIOException = new InterruptedIOException();
                interruptedIOException.initCause(e);
                throw interruptedIOException;
            } catch (ExecutionException e2) {
                throw new IOException(e2);
            } catch (TimeoutException e3) {
                InterruptedByTimeoutException interruptedByTimeoutException = new InterruptedByTimeoutException();
                interruptedByTimeoutException.initCause(e3);
                throw interruptedByTimeoutException;
            }
        } catch (IOException e4) {
            throw e4;
        } catch (Exception e5) {
            throw new IOException(e5);
        }
    }
}
