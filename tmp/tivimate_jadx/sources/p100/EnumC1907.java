package p100;

import com.google.android.gms.internal.play_billing.ʽﹳ;
import com.rapid7.helper.smbj.io.SMB2Exception;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.EnumSet;
import java.util.LinkedList;
import java.util.concurrent.atomic.AtomicInteger;
import p078.AbstractC1679;
import p078.C1668;
import p250.C3304;
import p262.C3433;
import p263.C3440;
import p407.C4838;
import p453.AbstractC5372;
import p453.EnumC5369;
import p453.EnumC5370;
import p453.EnumC5371;
import ˊⁱ.ˑﹳ;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'EF0' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* renamed from: ˆˊ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class EnumC1907 {

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static final EnumC1907 f7621;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static final /* synthetic */ EnumC1907[] f7622;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final EnumC5371 f7623;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final String f7624;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final EnumC5371 f7625;

    /* JADX INFO: Fake field, exist only in values array */
    EnumC1907 EF0;

    static {
        EnumC5371 enumC5371 = EnumC5371.f20453;
        EnumC5371 enumC53712 = EnumC5371.f20456;
        EnumC1907 enumC1907 = new EnumC1907("WINREG", 0, "winreg", enumC5371, enumC53712);
        EnumC5371 enumC53713 = EnumC5371.f20455;
        EnumC1907 enumC19072 = new EnumC1907("SRVSVC", 1, "srvsvc", enumC53713, enumC53712);
        f7621 = enumC19072;
        f7622 = new EnumC1907[]{enumC1907, enumC19072, new EnumC1907("LSASVC", 2, "lsarpc", EnumC5371.f20452, enumC53712), new EnumC1907("SAMSVC", 3, "samr", EnumC5371.f20457, enumC53712), new EnumC1907("BROWSER_SRVSVC", 4, "browser", enumC53713, enumC53712), new EnumC1907("SVCCTL", 5, "svcctl", EnumC5371.f20454, enumC53712)};
    }

    public EnumC1907(String str, int i, String str2, EnumC5371 enumC5371, EnumC5371 enumC53712) {
        this.f7624 = str2;
        this.f7625 = enumC5371;
        this.f7623 = enumC53712;
    }

    public static EnumC1907 valueOf(String str) {
        return (EnumC1907) Enum.valueOf(EnumC1907.class, str);
    }

    public static EnumC1907[] values() {
        return (EnumC1907[]) f7622.clone();
    }

    /* JADX WARN: Type inference failed for: r2v6, types: [ﾞˉ.ﹳٴ, ﹳˈ.ⁱˊ] */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ʽﹳ m4853(C3304 c3304) {
        AbstractC1679 m7114 = c3304.m7114("IPC$");
        boolean z = m7114 instanceof C1668;
        String str = this.f7624;
        if (!z) {
            throw new IOException(str.concat(" not a named pipe."));
        }
        C1668 c1668 = (C1668) m7114;
        LinkedList linkedList = new LinkedList();
        for (int i = -1; i < 1; i++) {
            try {
                ʽﹳ r7 = new ʽﹳ(new C3440(c3304, c1668, str));
                EnumC5371 enumC5371 = this.f7625;
                C4838 c4838 = new C4838(enumC5371, this.f7623);
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                ˑﹳ r3 = new ˑﹳ(byteArrayOutputStream);
                c4838.f20466 = ((AtomicInteger) r7.ʽʽ).getAndIncrement();
                c4838.f20471 = EnumSet.of(EnumC5370.f20449, EnumC5370.f20447);
                c4838.mo9633(r3);
                byte[] bArr = new byte[r7.ᴵˊ];
                C3433 c3433 = new C3433(new ByteArrayInputStream(bArr, 0, r7.ˈٴ(byteArrayOutputStream.toByteArray(), bArr)));
                ?? abstractC5372 = new AbstractC5372();
                abstractC5372.mo9635(c3433);
                if (EnumC5369.f20443.equals(abstractC5372.f20468)) {
                    r7.ᴵˊ = abstractC5372.f18137;
                    return r7;
                }
                throw new IOException("BIND " + enumC5371.f20460 + " (" + enumC5371.f20462 + ") failed.");
            } catch (SMB2Exception e) {
                linkedList.offer(e);
                if (e.f3104.ordinal() != 29) {
                    throw ((SMB2Exception) linkedList.poll());
                }
                try {
                    Thread.sleep(3000L);
                } catch (InterruptedException e2) {
                    InterruptedIOException interruptedIOException = new InterruptedIOException();
                    interruptedIOException.addSuppressed(e2);
                    throw interruptedIOException;
                }
            }
        }
        if (!linkedList.isEmpty()) {
            throw ((SMB2Exception) linkedList.poll());
        }
        throw new IOException("Unknown error when opening pipe: " + c1668.f6806.m6449());
    }
}
