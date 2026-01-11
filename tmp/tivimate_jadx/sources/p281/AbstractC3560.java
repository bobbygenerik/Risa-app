package p281;

import android.os.SystemClock;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.SocketTimeoutException;
import java.util.Arrays;
import p307.AbstractC3740;

/* renamed from: ٴʿ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3560 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static boolean f13914;

    /* renamed from: ˈ, reason: contains not printable characters */
    public static long f13915;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final Object f13917 = new Object();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final Object f13916 = new Object();

    /* renamed from: ʽ, reason: contains not printable characters */
    public static void m7504() {
        synchronized (f13916) {
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static long m7505(int i, byte[] bArr) {
        int i2 = bArr[i];
        int i3 = bArr[i + 1];
        int i4 = bArr[i + 2];
        int i5 = bArr[i + 3];
        if ((i2 & 128) == 128) {
            i2 = (i2 & 127) + 128;
        }
        if ((i3 & 128) == 128) {
            i3 = (i3 & 127) + 128;
        }
        if ((i4 & 128) == 128) {
            i4 = (i4 & 127) + 128;
        }
        if ((i5 & 128) == 128) {
            i5 = (i5 & 127) + 128;
        }
        return (i2 << 24) + (i3 << 16) + (i4 << 8) + i5;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static long m7506(int i, byte[] bArr) {
        long m7505 = m7505(i, bArr);
        long m75052 = m7505(i + 4, bArr);
        if (m7505 == 0 && m75052 == 0) {
            return 0L;
        }
        return ((m75052 * 1000) / 4294967296L) + ((m7505 - 2208988800L) * 1000);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static void m7507(byte b, byte b2, int i, long j) {
        if (b == 3) {
            throw new IOException("SNTP: Unsynchronized server");
        }
        if (b2 != 4 && b2 != 5) {
            throw new IOException(AbstractC3740.m7932(b2, "SNTP: Untrusted mode: "));
        }
        if (i == 0 || i > 15) {
            throw new IOException(AbstractC3740.m7932(i, "SNTP: Untrusted stratum: "));
        }
        if (j == 0) {
            throw new IOException("SNTP: Zero transmitTime");
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static long m7508() {
        byte b;
        SocketTimeoutException socketTimeoutException;
        byte[] bArr;
        DatagramSocket datagramSocket = new DatagramSocket();
        try {
            synchronized (f13916) {
            }
            datagramSocket.setSoTimeout(1000);
            m7504();
            InetAddress[] allByName = InetAddress.getAllByName("time.android.com");
            int length = allByName.length;
            byte b2 = 0;
            SocketTimeoutException socketTimeoutException2 = null;
            int i = 0;
            int i2 = 0;
            while (i < length) {
                byte[] bArr2 = new byte[48];
                DatagramPacket datagramPacket = new DatagramPacket(bArr2, 48, allByName[i], 123);
                bArr2[b2] = 27;
                long currentTimeMillis = System.currentTimeMillis();
                long elapsedRealtime = SystemClock.elapsedRealtime();
                if (currentTimeMillis == 0) {
                    Arrays.fill(bArr2, 40, 48, b2);
                    b = b2;
                    socketTimeoutException = socketTimeoutException2;
                    bArr = bArr2;
                } else {
                    long j = currentTimeMillis / 1000;
                    Long.signum(j);
                    long j2 = currentTimeMillis - (j * 1000);
                    b = b2;
                    socketTimeoutException = socketTimeoutException2;
                    long j3 = j + 2208988800L;
                    bArr = bArr2;
                    bArr[40] = (byte) (j3 >> 24);
                    bArr[41] = (byte) (j3 >> 16);
                    bArr[42] = (byte) (j3 >> 8);
                    bArr[43] = (byte) j3;
                    long j4 = (j2 * 4294967296L) / 1000;
                    bArr[44] = (byte) (j4 >> 24);
                    bArr[45] = (byte) (j4 >> 16);
                    bArr[46] = (byte) (j4 >> 8);
                    bArr[47] = (byte) (Math.random() * 255.0d);
                }
                datagramSocket.send(datagramPacket);
                byte[] bArr3 = bArr;
                try {
                    datagramSocket.receive(new DatagramPacket(bArr3, 48));
                    long elapsedRealtime2 = SystemClock.elapsedRealtime();
                    long j5 = (elapsedRealtime2 - elapsedRealtime) + currentTimeMillis;
                    byte b3 = bArr3[b];
                    int i3 = bArr3[1] & 255;
                    long m7506 = m7506(24, bArr3);
                    long m75062 = m7506(32, bArr3);
                    long m75063 = m7506(40, bArr3);
                    m7507((byte) ((b3 >> 6) & 3), (byte) (b3 & 7), i3, m75063);
                    long j6 = (j5 + (((m75063 - j5) + (m75062 - m7506)) / 2)) - elapsedRealtime2;
                    datagramSocket.close();
                    return j6;
                } catch (SocketTimeoutException e) {
                    if (socketTimeoutException == null) {
                        socketTimeoutException2 = e;
                    } else {
                        SocketTimeoutException socketTimeoutException3 = socketTimeoutException;
                        socketTimeoutException3.addSuppressed(e);
                        socketTimeoutException2 = socketTimeoutException3;
                    }
                    int i4 = i2 + 1;
                    if (i2 >= 10) {
                        break;
                    }
                    i++;
                    i2 = i4;
                    b2 = b;
                }
            }
            socketTimeoutException2.getClass();
            throw socketTimeoutException2;
        } finally {
        }
    }
}
