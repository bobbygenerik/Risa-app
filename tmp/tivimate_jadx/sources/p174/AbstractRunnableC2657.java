package p174;

import com.hierynomus.protocol.transport.TransportException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import p183.C2760;
import p289.C3601;
import p289.C3602;
import p449.AbstractC5359;
import p449.InterfaceC5360;
import ˋⁱ.ﾞᴵ;
import ᵢ.ﹳٴ;

/* renamed from: ˋʽ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractRunnableC2657 implements Runnable {

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static final InterfaceC5360 f10086 = AbstractC5359.m10750(AbstractRunnableC2657.class);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public AtomicBoolean f10087;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public InputStream f10088;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public Thread f10089;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public C3602 f10090;

    @Override // java.lang.Runnable
    public final void run() {
        InterfaceC5360 interfaceC5360;
        AtomicBoolean atomicBoolean = this.f10087;
        while (true) {
            boolean isInterrupted = Thread.currentThread().isInterrupted();
            interfaceC5360 = f10086;
            if (isInterrupted || atomicBoolean.get()) {
                break;
            }
            try {
                m5939();
            } catch (TransportException e) {
                if (!atomicBoolean.get()) {
                    interfaceC5360.mo4093(e);
                    C3602 c3602 = this.f10090;
                    ﹳٴ r2 = c3602.f14089;
                    HashMap hashMap = (HashMap) r2.ʽʽ;
                    ReentrantReadWriteLock reentrantReadWriteLock = (ReentrantReadWriteLock) r2.ᴵˊ;
                    reentrantReadWriteLock.writeLock().lock();
                    try {
                        Iterator it = new HashSet(hashMap.keySet()).iterator();
                        while (it.hasNext()) {
                            C3601 c3601 = (C3601) hashMap.remove((Long) it.next());
                            ((HashMap) r2.ˈٴ).remove(c3601.f14074);
                            C2760 c2760 = c3601.f14077;
                            ReentrantLock reentrantLock = (ReentrantLock) c2760.f10518;
                            reentrantLock.lock();
                            try {
                                c2760.f10514 = ((ﾞᴵ) c2760.f10513).ᵢˏ(e);
                                ((Condition) c2760.f10515).signalAll();
                                reentrantLock.unlock();
                            } catch (Throwable th) {
                                reentrantLock.unlock();
                                throw th;
                            }
                        }
                        try {
                            c3602.close();
                            return;
                        } catch (Exception e2) {
                            C3602.f14079.mo4090(e2.getClass().getSimpleName(), e2.getMessage(), "{} while closing connection on error, ignoring: {}");
                            return;
                        }
                    } finally {
                        reentrantReadWriteLock.writeLock().unlock();
                    }
                }
            }
        }
        if (atomicBoolean.get()) {
            interfaceC5360.mo4100(this.f10089, "{} stopped.");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x0163, code lost:
    
        r11 = p250.C3305.f12717;
        r11.mo4103(r0, java.util.Arrays.toString(r10), java.util.Arrays.toString(r2));
        r11.mo4097(r0, r0.ˊᵔ(), "Packet {} has header: {}");
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0181, code lost:
    
        r7.mo4096(r0, "Invalid packet signature for packet {}");
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0188, code lost:
    
        if (r4.f12706 != false) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x01a3, code lost:
    
        throw new java.io.IOException("Packet signature for packet " + r0 + " was not correct");
     */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m5939() {
        /*
            Method dump skipped, instructions count: 640
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p174.AbstractRunnableC2657.m5939():void");
    }
}
