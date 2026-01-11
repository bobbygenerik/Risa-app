package j$.util.concurrent;

import java.util.concurrent.locks.LockSupport;

/* loaded from: classes2.dex */
public final class p extends k {
    public static final j$.sun.misc.a h;
    public static final long i;
    public q e;
    public volatile q f;
    public volatile Thread g;
    volatile int lockState;

    static {
        j$.sun.misc.a aVar = j$.sun.misc.a.b;
        h = aVar;
        i = aVar.h(p.class, "lockState");
    }

    public p(q qVar) {
        super(-2, null, null);
        int i2;
        this.f = qVar;
        q qVar2 = null;
        while (qVar != null) {
            q qVar3 = (q) qVar.d;
            qVar.g = null;
            qVar.f = null;
            if (qVar2 == null) {
                qVar.e = null;
                qVar.i = false;
            } else {
                Object obj = qVar.b;
                int i3 = qVar.a;
                q qVar4 = qVar2;
                Class<?> cls = null;
                while (true) {
                    Object obj2 = qVar4.b;
                    int i4 = qVar4.a;
                    if (i4 > i3) {
                        i2 = -1;
                    } else if (i4 < i3) {
                        i2 = 1;
                    } else {
                        if (cls != null || (cls = ConcurrentHashMap.c(obj)) != null) {
                            int i5 = ConcurrentHashMap.g;
                            int compareTo = (obj2 == null || obj2.getClass() != cls) ? 0 : ((Comparable) obj).compareTo(obj2);
                            if (compareTo != 0) {
                                i2 = compareTo;
                            }
                        }
                        i2 = i(obj, obj2);
                    }
                    q qVar5 = i2 <= 0 ? qVar4.f : qVar4.g;
                    if (qVar5 == null) {
                        break;
                    } else {
                        qVar4 = qVar5;
                    }
                }
                qVar.e = qVar4;
                if (i2 <= 0) {
                    qVar4.f = qVar;
                } else {
                    qVar4.g = qVar;
                }
                qVar = c(qVar2, qVar);
            }
            qVar2 = qVar;
            qVar = qVar3;
        }
        this.e = qVar2;
    }

    public static q b(q qVar, q qVar2) {
        while (qVar2 != null && qVar2 != qVar) {
            q qVar3 = qVar2.e;
            if (qVar3 == null) {
                qVar2.i = false;
                return qVar2;
            }
            if (qVar2.i) {
                qVar2.i = false;
                return qVar;
            }
            q qVar4 = qVar3.f;
            if (qVar4 == qVar2) {
                q qVar5 = qVar3.g;
                if (qVar5 != null && qVar5.i) {
                    qVar5.i = false;
                    qVar3.i = true;
                    qVar = g(qVar, qVar3);
                    qVar3 = qVar2.e;
                    qVar5 = qVar3 == null ? null : qVar3.g;
                }
                if (qVar5 != null) {
                    q qVar6 = qVar5.f;
                    q qVar7 = qVar5.g;
                    if ((qVar7 == null || !qVar7.i) && (qVar6 == null || !qVar6.i)) {
                        qVar5.i = true;
                    } else {
                        if (qVar7 == null || !qVar7.i) {
                            if (qVar6 != null) {
                                qVar6.i = false;
                            }
                            qVar5.i = true;
                            qVar = h(qVar, qVar5);
                            qVar3 = qVar2.e;
                            qVar5 = qVar3 != null ? qVar3.g : null;
                        }
                        if (qVar5 != null) {
                            qVar5.i = qVar3 == null ? false : qVar3.i;
                            q qVar8 = qVar5.g;
                            if (qVar8 != null) {
                                qVar8.i = false;
                            }
                        }
                        if (qVar3 != null) {
                            qVar3.i = false;
                            qVar = g(qVar, qVar3);
                        }
                        qVar2 = qVar;
                    }
                }
                qVar2 = qVar3;
            } else {
                if (qVar4 != null && qVar4.i) {
                    qVar4.i = false;
                    qVar3.i = true;
                    qVar = h(qVar, qVar3);
                    qVar3 = qVar2.e;
                    qVar4 = qVar3 == null ? null : qVar3.f;
                }
                if (qVar4 != null) {
                    q qVar9 = qVar4.f;
                    q qVar10 = qVar4.g;
                    if ((qVar9 == null || !qVar9.i) && (qVar10 == null || !qVar10.i)) {
                        qVar4.i = true;
                    } else {
                        if (qVar9 == null || !qVar9.i) {
                            if (qVar10 != null) {
                                qVar10.i = false;
                            }
                            qVar4.i = true;
                            qVar = g(qVar, qVar4);
                            qVar3 = qVar2.e;
                            qVar4 = qVar3 != null ? qVar3.f : null;
                        }
                        if (qVar4 != null) {
                            qVar4.i = qVar3 == null ? false : qVar3.i;
                            q qVar11 = qVar4.f;
                            if (qVar11 != null) {
                                qVar11.i = false;
                            }
                        }
                        if (qVar3 != null) {
                            qVar3.i = false;
                            qVar = h(qVar, qVar3);
                        }
                        qVar2 = qVar;
                    }
                }
                qVar2 = qVar3;
            }
        }
        return qVar;
    }

    public static q c(q qVar, q qVar2) {
        q qVar3;
        qVar2.i = true;
        while (true) {
            q qVar4 = qVar2.e;
            if (qVar4 == null) {
                qVar2.i = false;
                return qVar2;
            }
            if (!qVar4.i || (qVar3 = qVar4.e) == null) {
                break;
            }
            q qVar5 = qVar3.f;
            if (qVar4 == qVar5) {
                q qVar6 = qVar3.g;
                if (qVar6 == null || !qVar6.i) {
                    if (qVar2 == qVar4.g) {
                        qVar = g(qVar, qVar4);
                        q qVar7 = qVar4.e;
                        qVar3 = qVar7 == null ? null : qVar7.e;
                        qVar4 = qVar7;
                        qVar2 = qVar4;
                    }
                    if (qVar4 != null) {
                        qVar4.i = false;
                        if (qVar3 != null) {
                            qVar3.i = true;
                            qVar = h(qVar, qVar3);
                        }
                    }
                } else {
                    qVar6.i = false;
                    qVar4.i = false;
                    qVar3.i = true;
                    qVar2 = qVar3;
                }
            } else if (qVar5 == null || !qVar5.i) {
                if (qVar2 == qVar4.f) {
                    qVar = h(qVar, qVar4);
                    q qVar8 = qVar4.e;
                    qVar3 = qVar8 == null ? null : qVar8.e;
                    qVar4 = qVar8;
                    qVar2 = qVar4;
                }
                if (qVar4 != null) {
                    qVar4.i = false;
                    if (qVar3 != null) {
                        qVar3.i = true;
                        qVar = g(qVar, qVar3);
                    }
                }
            } else {
                qVar5.i = false;
                qVar4.i = false;
                qVar3.i = true;
                qVar2 = qVar3;
            }
        }
        return qVar;
    }

    public static q g(q qVar, q qVar2) {
        q qVar3;
        if (qVar2 != null && (qVar3 = qVar2.g) != null) {
            q qVar4 = qVar3.f;
            qVar2.g = qVar4;
            if (qVar4 != null) {
                qVar4.e = qVar2;
            }
            q qVar5 = qVar2.e;
            qVar3.e = qVar5;
            if (qVar5 == null) {
                qVar3.i = false;
                qVar = qVar3;
            } else if (qVar5.f == qVar2) {
                qVar5.f = qVar3;
            } else {
                qVar5.g = qVar3;
            }
            qVar3.f = qVar2;
            qVar2.e = qVar3;
        }
        return qVar;
    }

    public static q h(q qVar, q qVar2) {
        q qVar3;
        if (qVar2 != null && (qVar3 = qVar2.f) != null) {
            q qVar4 = qVar3.g;
            qVar2.f = qVar4;
            if (qVar4 != null) {
                qVar4.e = qVar2;
            }
            q qVar5 = qVar2.e;
            qVar3.e = qVar5;
            if (qVar5 == null) {
                qVar3.i = false;
                qVar = qVar3;
            } else if (qVar5.g == qVar2) {
                qVar5.g = qVar3;
            } else {
                qVar5.f = qVar3;
            }
            qVar3.g = qVar2;
            qVar2.e = qVar3;
        }
        return qVar;
    }

    public static int i(Object obj, Object obj2) {
        int compareTo;
        return (obj == null || obj2 == null || (compareTo = obj.getClass().getName().compareTo(obj2.getClass().getName())) == 0) ? System.identityHashCode(obj) <= System.identityHashCode(obj2) ? -1 : 1 : compareTo;
    }

    @Override // j$.util.concurrent.k
    public final k a(int i2, Object obj) {
        Object obj2;
        Thread thread;
        k kVar = this.f;
        while (true) {
            q qVar = null;
            if (kVar == null) {
                return null;
            }
            int i3 = this.lockState;
            if ((i3 & 3) == 0) {
                j$.sun.misc.a aVar = h;
                long j = i;
                if (aVar.c(this, j, i3, i3 + 4)) {
                    try {
                        q qVar2 = this.e;
                        if (qVar2 != null) {
                            qVar = qVar2.b(i2, obj, null);
                        }
                        if (aVar.e(this, j) == 6 && (thread = this.g) != null) {
                            LockSupport.unpark(thread);
                        }
                        return qVar;
                    } finally {
                    }
                }
            } else if (kVar.a != i2 || ((obj2 = kVar.b) != obj && (obj2 == null || !obj.equals(obj2)))) {
                kVar = kVar.d;
            }
        }
        return kVar;
    }

    public final void d() {
        if (h.c(this, i, 0, 1)) {
            return;
        }
        boolean z = false;
        while (true) {
            int i2 = this.lockState;
            if ((i2 & (-3)) == 0) {
                if (h.c(this, i, i2, 1)) {
                    break;
                }
            } else if ((i2 & 2) == 0) {
                if (h.c(this, i, i2, i2 | 2)) {
                    this.g = Thread.currentThread();
                    z = true;
                }
            } else if (z) {
                LockSupport.park(this);
            }
        }
        if (z) {
            this.g = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x00a9 A[LOOP:0: B:2:0x0007->B:10:0x00a9, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0079 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0072  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final j$.util.concurrent.q e(int r12, java.lang.Object r13, java.lang.Object r14) {
        /*
            r11 = this;
            j$.util.concurrent.q r0 = r11.e
            r7 = 0
            r8 = 0
            r6 = r0
            r0 = r7
            r1 = r8
        L7:
            if (r6 != 0) goto L18
            j$.util.concurrent.q r1 = new j$.util.concurrent.q
            r5 = 0
            r6 = 0
            r2 = r12
            r3 = r13
            r4 = r14
            r1.<init>(r2, r3, r4, r5, r6)
            r11.e = r1
            r11.f = r1
            return r7
        L18:
            int r4 = r6.a
            r9 = 1
            if (r4 <= r12) goto L20
            r4 = -1
        L1e:
            r10 = r4
            goto L70
        L20:
            if (r4 >= r12) goto L24
            r10 = r9
            goto L70
        L24:
            java.lang.Object r4 = r6.b
            if (r4 == r13) goto Lac
            if (r4 == 0) goto L32
            boolean r5 = r13.equals(r4)
            if (r5 == 0) goto L32
            goto Lac
        L32:
            if (r0 != 0) goto L3a
            java.lang.Class r0 = j$.util.concurrent.ConcurrentHashMap.c(r13)
            if (r0 == 0) goto L50
        L3a:
            int r5 = j$.util.concurrent.ConcurrentHashMap.g
            if (r4 == 0) goto L4d
            java.lang.Class r5 = r4.getClass()
            if (r5 == r0) goto L45
            goto L4d
        L45:
            r5 = r13
            java.lang.Comparable r5 = (java.lang.Comparable) r5
            int r5 = r5.compareTo(r4)
            goto L4e
        L4d:
            r5 = r8
        L4e:
            if (r5 != 0) goto L6f
        L50:
            if (r1 != 0) goto L6a
            j$.util.concurrent.q r1 = r6.f
            if (r1 == 0) goto L5e
            j$.util.concurrent.q r1 = r1.b(r12, r13, r0)
            if (r1 != 0) goto L5d
            goto L5e
        L5d:
            return r1
        L5e:
            j$.util.concurrent.q r1 = r6.g
            if (r1 == 0) goto L69
            j$.util.concurrent.q r1 = r1.b(r12, r13, r0)
            if (r1 == 0) goto L69
            return r1
        L69:
            r1 = r9
        L6a:
            int r4 = i(r13, r4)
            goto L1e
        L6f:
            r10 = r5
        L70:
            if (r10 > 0) goto L75
            j$.util.concurrent.q r4 = r6.f
            goto L77
        L75:
            j$.util.concurrent.q r4 = r6.g
        L77:
            if (r4 != 0) goto La9
            j$.util.concurrent.q r5 = r11.f
            j$.util.concurrent.q r1 = new j$.util.concurrent.q
            r2 = r12
            r3 = r13
            r4 = r14
            r1.<init>(r2, r3, r4, r5, r6)
            r11.f = r1
            if (r5 == 0) goto L89
            r5.h = r1
        L89:
            if (r10 > 0) goto L8e
            r6.f = r1
            goto L90
        L8e:
            r6.g = r1
        L90:
            boolean r0 = r6.i
            if (r0 != 0) goto L97
            r1.i = r9
            return r7
        L97:
            r11.d()
            j$.util.concurrent.q r0 = r11.e     // Catch: java.lang.Throwable -> La5
            j$.util.concurrent.q r0 = c(r0, r1)     // Catch: java.lang.Throwable -> La5
            r11.e = r0     // Catch: java.lang.Throwable -> La5
            r11.lockState = r8
            return r7
        La5:
            r0 = move-exception
            r11.lockState = r8
            throw r0
        La9:
            r6 = r4
            goto L7
        Lac:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.util.concurrent.p.e(int, java.lang.Object, java.lang.Object):j$.util.concurrent.q");
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0091 A[Catch: all -> 0x0052, TryCatch #0 {all -> 0x0052, blocks: (B:21:0x0030, B:25:0x0039, B:29:0x003f, B:31:0x004d, B:32:0x0068, B:34:0x006e, B:35:0x0070, B:41:0x0091, B:44:0x00a2, B:45:0x0099, B:47:0x009d, B:48:0x00a0, B:49:0x00a8, B:52:0x00b1, B:54:0x00b5, B:56:0x00b9, B:58:0x00bd, B:59:0x00c6, B:61:0x00c0, B:63:0x00c4, B:66:0x00ad, B:68:0x007a, B:70:0x007e, B:71:0x0081, B:72:0x0055, B:74:0x005b, B:76:0x005f, B:77:0x0062, B:78:0x0064), top: B:20:0x0030 }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00b5 A[Catch: all -> 0x0052, TryCatch #0 {all -> 0x0052, blocks: (B:21:0x0030, B:25:0x0039, B:29:0x003f, B:31:0x004d, B:32:0x0068, B:34:0x006e, B:35:0x0070, B:41:0x0091, B:44:0x00a2, B:45:0x0099, B:47:0x009d, B:48:0x00a0, B:49:0x00a8, B:52:0x00b1, B:54:0x00b5, B:56:0x00b9, B:58:0x00bd, B:59:0x00c6, B:61:0x00c0, B:63:0x00c4, B:66:0x00ad, B:68:0x007a, B:70:0x007e, B:71:0x0081, B:72:0x0055, B:74:0x005b, B:76:0x005f, B:77:0x0062, B:78:0x0064), top: B:20:0x0030 }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00bd A[Catch: all -> 0x0052, TryCatch #0 {all -> 0x0052, blocks: (B:21:0x0030, B:25:0x0039, B:29:0x003f, B:31:0x004d, B:32:0x0068, B:34:0x006e, B:35:0x0070, B:41:0x0091, B:44:0x00a2, B:45:0x0099, B:47:0x009d, B:48:0x00a0, B:49:0x00a8, B:52:0x00b1, B:54:0x00b5, B:56:0x00b9, B:58:0x00bd, B:59:0x00c6, B:61:0x00c0, B:63:0x00c4, B:66:0x00ad, B:68:0x007a, B:70:0x007e, B:71:0x0081, B:72:0x0055, B:74:0x005b, B:76:0x005f, B:77:0x0062, B:78:0x0064), top: B:20:0x0030 }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00c0 A[Catch: all -> 0x0052, TryCatch #0 {all -> 0x0052, blocks: (B:21:0x0030, B:25:0x0039, B:29:0x003f, B:31:0x004d, B:32:0x0068, B:34:0x006e, B:35:0x0070, B:41:0x0091, B:44:0x00a2, B:45:0x0099, B:47:0x009d, B:48:0x00a0, B:49:0x00a8, B:52:0x00b1, B:54:0x00b5, B:56:0x00b9, B:58:0x00bd, B:59:0x00c6, B:61:0x00c0, B:63:0x00c4, B:66:0x00ad, B:68:0x007a, B:70:0x007e, B:71:0x0081, B:72:0x0055, B:74:0x005b, B:76:0x005f, B:77:0x0062, B:78:0x0064), top: B:20:0x0030 }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00ad A[Catch: all -> 0x0052, TryCatch #0 {all -> 0x0052, blocks: (B:21:0x0030, B:25:0x0039, B:29:0x003f, B:31:0x004d, B:32:0x0068, B:34:0x006e, B:35:0x0070, B:41:0x0091, B:44:0x00a2, B:45:0x0099, B:47:0x009d, B:48:0x00a0, B:49:0x00a8, B:52:0x00b1, B:54:0x00b5, B:56:0x00b9, B:58:0x00bd, B:59:0x00c6, B:61:0x00c0, B:63:0x00c4, B:66:0x00ad, B:68:0x007a, B:70:0x007e, B:71:0x0081, B:72:0x0055, B:74:0x005b, B:76:0x005f, B:77:0x0062, B:78:0x0064), top: B:20:0x0030 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean f(j$.util.concurrent.q r11) {
        /*
            Method dump skipped, instructions count: 207
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.util.concurrent.p.f(j$.util.concurrent.q):boolean");
    }
}
