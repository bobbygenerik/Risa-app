package p170;

import android.util.StateSet;
import com.parse.ٴʼ;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.Serializable;
import java.net.Socket;
import java.util.ArrayList;
import java.util.concurrent.locks.ReentrantLock;
import javax.net.SocketFactory;
import p058.C1517;
import p082.AbstractC1719;
import p174.AbstractRunnableC2657;
import p188.C2862;
import p197.AbstractC2901;
import p208.C2940;
import p430.AbstractC5106;
import p430.AbstractC5114;
import p435.AbstractC5143;
import p449.AbstractC5359;
import p449.InterfaceC5360;
import ʽⁱ.ᵎﹶ;

/* renamed from: ˊﹶ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2617 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public Object f9912;

    /* renamed from: ʽ, reason: contains not printable characters */
    public Object f9913;

    /* renamed from: ˈ, reason: contains not printable characters */
    public Object f9914;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public Serializable f9915;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public Object f9916;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public Object f9917;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f9918;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f9919;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public Object f9920;

    public C2617() {
        this.f9919 = 2;
        this.f9914 = "";
        this.f9915 = "";
        this.f9918 = -1;
        this.f9916 = AbstractC5106.m10046("");
    }

    public /* synthetic */ C2617(int i) {
        this.f9919 = i;
    }

    public C2617(SocketFactory socketFactory, int i, ٴʼ r4) {
        this.f9919 = 0;
        this.f9913 = AbstractC5359.m10750(C2617.class);
        this.f9915 = new ReentrantLock();
        new C1517();
        this.f9918 = i;
        this.f9920 = socketFactory;
        this.f9914 = r4;
    }

    public C2617(C2862 c2862) {
        this.f9919 = 1;
        m5873();
        m5876(StateSet.WILD_CARD, c2862);
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static ArrayList m5868(String str) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i <= str.length()) {
            int m10118 = AbstractC5143.m10118(str, '&', i, 4);
            if (m10118 == -1) {
                m10118 = str.length();
            }
            int m101182 = AbstractC5143.m10118(str, '=', i, 4);
            if (m101182 == -1 || m101182 > m10118) {
                arrayList.add(str.substring(i, m10118));
                arrayList.add(null);
            } else {
                arrayList.add(str.substring(i, m101182));
                arrayList.add(str.substring(m101182 + 1, m10118));
            }
            i = m10118 + 1;
        }
        return arrayList;
    }

    /* JADX WARN: Code restructure failed: missing block: B:56:0x0101, code lost:
    
        if (r1 != r3) goto L40;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String toString() {
        /*
            Method dump skipped, instructions count: 406
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p170.C2617.toString():java.lang.String");
    }

    /* JADX WARN: Type inference failed for: r2v5, types: [ˋʼ.ﹳٴ, ˎʿ.ⁱˊ] */
    /* renamed from: ʼˎ, reason: contains not printable characters */
    public void m5869(ᵎﹶ r7) {
        InterfaceC5360 interfaceC5360 = (InterfaceC5360) this.f9913;
        interfaceC5360.mo4094(r7, "Acquiring write lock to send packet << {} >>");
        ReentrantLock reentrantLock = (ReentrantLock) this.f9915;
        reentrantLock.lock();
        try {
            if (!m5877()) {
                throw new IOException(String.format("Cannot write %s as transport is disconnected", r7));
            }
            try {
                interfaceC5360.mo4098(r7, "Writing packet {}");
                Object obj = ((ٴʼ) this.f9914).ᴵˊ;
                ?? abstractC2901 = new AbstractC2901();
                r7.m7748(abstractC2901);
                m5871(abstractC2901.m6421());
                ((BufferedOutputStream) this.f9917).write(abstractC2901.f10940, abstractC2901.f10937, abstractC2901.m6421());
                ((BufferedOutputStream) this.f9917).flush();
                interfaceC5360.mo4094(r7, "Packet {} sent, lock released.");
            } catch (IOException e) {
                throw new IOException(e);
            }
        } finally {
            reentrantLock.unlock();
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public void m5870() {
        ReentrantLock reentrantLock = (ReentrantLock) this.f9915;
        reentrantLock.lock();
        try {
            if (!m5877()) {
                reentrantLock.unlock();
                return;
            }
            C2618 c2618 = (C2618) this.f9912;
            c2618.getClass();
            AbstractRunnableC2657.f10086.mo4101("Stopping PacketReader...");
            c2618.f10087.set(true);
            c2618.f10089.interrupt();
            if (((Socket) this.f9916).getInputStream() != null) {
                ((Socket) this.f9916).getInputStream().close();
            }
            BufferedOutputStream bufferedOutputStream = (BufferedOutputStream) this.f9917;
            if (bufferedOutputStream != null) {
                bufferedOutputStream.close();
                this.f9917 = null;
            }
            Socket socket = (Socket) this.f9916;
            if (socket != null) {
                socket.close();
                this.f9916 = null;
            }
            reentrantLock.unlock();
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public void m5871(int i) {
        ((BufferedOutputStream) this.f9917).write(0);
        ((BufferedOutputStream) this.f9917).write((byte) (i >> 16));
        ((BufferedOutputStream) this.f9917).write((byte) (i >> 8));
        ((BufferedOutputStream) this.f9917).write((byte) (i & 255));
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public int m5872() {
        int i = this.f9918;
        if (i != -1) {
            return i;
        }
        String str = (String) this.f9913;
        if (str.equals("http")) {
            return 80;
        }
        return str.equals("https") ? 443 : -1;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [ˋⁱ.ᵔʾ[], java.io.Serializable] */
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public void m5873() {
        this.f9913 = new C2862();
        this.f9914 = new int[10];
        this.f9915 = new C2862[10];
    }

    /* JADX WARN: Code restructure failed: missing block: B:146:0x0218, code lost:
    
        if (r7 < 65536) goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:216:0x0077, code lost:
    
        if (r6 == ':') goto L37;
     */
    /* JADX WARN: Removed duplicated region for block: B:124:0x01da  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x01fe  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x0269  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x0360  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0241  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x01f6 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0153  */
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m5874(p208.C2940 r20, java.lang.String r21) {
        /*
            Method dump skipped, instructions count: 926
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p170.C2617.m5874(ˎᵢ.ʼᐧ, java.lang.String):void");
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public C2940 m5875() {
        ArrayList arrayList;
        String str = (String) this.f9913;
        if (str == null) {
            throw new IllegalStateException("scheme == null");
        }
        String m4657 = AbstractC1719.m4657(0, 0, 7, (String) this.f9914);
        String m46572 = AbstractC1719.m4657(0, 0, 7, (String) this.f9915);
        String str2 = (String) this.f9920;
        if (str2 == null) {
            throw new IllegalStateException("host == null");
        }
        int m5872 = m5872();
        ArrayList arrayList2 = (ArrayList) this.f9916;
        ArrayList arrayList3 = new ArrayList(AbstractC5114.m10060(arrayList2, 10));
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList2.get(i);
            i++;
            arrayList3.add(AbstractC1719.m4657(0, 0, 7, (String) obj));
        }
        ArrayList arrayList4 = (ArrayList) this.f9917;
        if (arrayList4 != null) {
            ArrayList arrayList5 = new ArrayList(AbstractC5114.m10060(arrayList4, 10));
            int size2 = arrayList4.size();
            int i2 = 0;
            while (i2 < size2) {
                Object obj2 = arrayList4.get(i2);
                i2++;
                String str3 = (String) obj2;
                arrayList5.add(str3 != null ? AbstractC1719.m4657(0, 0, 3, str3) : null);
            }
            arrayList = arrayList5;
        } else {
            arrayList = null;
        }
        String str4 = (String) this.f9912;
        return new C2940(str, m4657, m46572, str2, m5872, arrayList3, arrayList, str4 != null ? AbstractC1719.m4657(0, 0, 7, str4) : null, toString());
    }

    /* JADX WARN: Type inference failed for: r1v4, types: [java.lang.Object, ˋⁱ.ᵔʾ[], java.io.Serializable] */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public void m5876(int[] iArr, C2862 c2862) {
        int i = this.f9918;
        if (i == 0 || iArr.length == 0) {
            this.f9913 = c2862;
        }
        int[][] iArr2 = (int[][]) this.f9914;
        if (i >= iArr2.length) {
            int i2 = i + 10;
            int[][] iArr3 = new int[i2];
            System.arraycopy(iArr2, 0, iArr3, 0, i);
            this.f9914 = iArr3;
            ?? r1 = new C2862[i2];
            System.arraycopy((C2862[]) this.f9915, 0, r1, 0, i);
            this.f9915 = r1;
        }
        int[][] iArr4 = (int[][]) this.f9914;
        int i3 = this.f9918;
        iArr4[i3] = iArr;
        ((C2862[]) this.f9915)[i3] = c2862;
        this.f9918 = i3 + 1;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public boolean m5877() {
        Socket socket = (Socket) this.f9916;
        return (socket == null || !socket.isConnected() || ((Socket) this.f9916).isClosed()) ? false : true;
    }
}
