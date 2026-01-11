.class public final Lﹳˊ/ˈ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final ˈʿ:Lcom/google/android/gms/common/api/Status;

.field public static ˊˋ:Lﹳˊ/ˈ;

.field public static final ˋᵔ:Ljava/lang/Object;

.field public static final ˑٴ:Lcom/google/android/gms/common/api/Status;


# instance fields
.field public ʽʽ:Lٴﾞ/ﾞʻ;

.field public ʾˋ:J

.field public final ˆﾞ:Lcom/google/android/gms/internal/measurement/ˉٴ;

.field public ˈٴ:Lˆˆ/ʽ;

.field public final ˉٴ:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final ˊʻ:Lᴵˈ/ˑﹳ;

.field public final ٴʼ:Lj$/util/concurrent/ConcurrentHashMap;

.field public final ٴᵢ:Lˑʼ/ᵎˊ;

.field public ᴵˊ:Z

.field public final ᴵᵔ:Landroid/content/Context;

.field public final ᵎˊ:Lיـ/ﾞᴵ;

.field public final ᵎⁱ:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final ᵔי:Lיـ/ﾞᴵ;

.field public volatile ᵔٴ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x4

    const-string v2, "Sign-out occurred while this API call was in progress."

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lᴵˈ/ⁱˊ;)V

    sput-object v0, Lﹳˊ/ˈ;->ˈʿ:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v2, "The user must be signed in to make this API call."

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lᴵˈ/ⁱˊ;)V

    sput-object v0, Lﹳˊ/ˈ;->ˑٴ:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lﹳˊ/ˈ;->ˋᵔ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 6

    .prologue
    sget-object v0, Lᴵˈ/ˑﹳ;->ˈ:Lᴵˈ/ˑﹳ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, 0x2710

    iput-wide v1, p0, Lﹳˊ/ˈ;->ʾˋ:J

    const/4 v1, 0x0

    iput-boolean v1, p0, Lﹳˊ/ˈ;->ᴵˊ:Z

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lﹳˊ/ˈ;->ˉٴ:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lﹳˊ/ˈ;->ᵎⁱ:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v2, Lj$/util/concurrent/ConcurrentHashMap;

    const/4 v4, 0x5

    const/high16 v5, 0x3f400000    # 0.75f

    invoke-direct {v2, v4, v5, v3}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v2, p0, Lﹳˊ/ˈ;->ٴʼ:Lj$/util/concurrent/ConcurrentHashMap;

    new-instance v2, Lיـ/ﾞᴵ;

    invoke-direct {v2, v1}, Lיـ/ﾞᴵ;-><init>(I)V

    iput-object v2, p0, Lﹳˊ/ˈ;->ᵎˊ:Lיـ/ﾞᴵ;

    new-instance v2, Lיـ/ﾞᴵ;

    invoke-direct {v2, v1}, Lיـ/ﾞᴵ;-><init>(I)V

    iput-object v2, p0, Lﹳˊ/ˈ;->ᵔי:Lיـ/ﾞᴵ;

    iput-boolean v3, p0, Lﹳˊ/ˈ;->ᵔٴ:Z

    iput-object p1, p0, Lﹳˊ/ˈ;->ᴵᵔ:Landroid/content/Context;

    new-instance v2, Lcom/google/android/gms/internal/measurement/ˉٴ;

    invoke-direct {v2, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    iput-object v2, p0, Lﹳˊ/ˈ;->ˆﾞ:Lcom/google/android/gms/internal/measurement/ˉٴ;

    iput-object v0, p0, Lﹳˊ/ˈ;->ˊʻ:Lᴵˈ/ˑﹳ;

    new-instance p2, Lˑʼ/ᵎˊ;

    const/16 v0, 0xa

    invoke-direct {p2, v0}, Lˑʼ/ᵎˊ;-><init>(I)V

    iput-object p2, p0, Lﹳˊ/ˈ;->ٴᵢ:Lˑʼ/ᵎˊ;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    sget-object p2, Lᵎᴵ/ⁱˊ;->ﾞᴵ:Ljava/lang/Boolean;

    if-nez p2, :cond_1

    invoke-static {}, Lᵎᴵ/ⁱˊ;->ﹳٴ()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "android.hardware.type.automotive"

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lᵎᴵ/ⁱˊ;->ﾞᴵ:Ljava/lang/Boolean;

    :cond_1
    sget-object p1, Lᵎᴵ/ⁱˊ;->ﾞᴵ:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    iput-boolean v1, p0, Lﹳˊ/ˈ;->ᵔٴ:Z

    :cond_2
    const/4 p1, 0x6

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static ˑﹳ(Landroid/content/Context;)Lﹳˊ/ˈ;
    .locals 4

    .prologue
    sget-object v0, Lﹳˊ/ˈ;->ˋᵔ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lﹳˊ/ˈ;->ˊˋ:Lﹳˊ/ˈ;

    if-nez v1, :cond_0

    invoke-static {}, Lٴﾞ/ˊʻ;->ⁱˊ()Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lﹳˊ/ˈ;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v3, Lᴵˈ/ˑﹳ;->ʽ:Ljava/lang/Object;

    invoke-direct {v2, p0, v1}, Lﹳˊ/ˈ;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    sput-object v2, Lﹳˊ/ˈ;->ˊˋ:Lﹳˊ/ˈ;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lﹳˊ/ˈ;->ˊˋ:Lﹳˊ/ˈ;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static ⁱˊ(Lﹳˊ/ﹳٴ;Lᴵˈ/ⁱˊ;)Lcom/google/android/gms/common/api/Status;
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    iget-object p0, p0, Lﹳˊ/ﹳٴ;->ⁱˊ:Lˑʼ/ᵎˊ;

    iget-object p0, p0, Lˑʼ/ᵎˊ;->ʽʽ:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "API: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not available on this device. Connection failed with: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x11

    iget-object v2, p1, Lᴵˈ/ⁱˊ;->ʽʽ:Landroid/app/PendingIntent;

    invoke-direct {v0, v1, p0, v2, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lᴵˈ/ⁱˊ;)V

    return-object v0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 12

    .prologue
    iget-object v0, p0, Lﹳˊ/ˈ;->ᴵᵔ:Landroid/content/Context;

    iget-object v1, p0, Lﹳˊ/ˈ;->ᵔי:Lיـ/ﾞᴵ;

    const-string v2, "GoogleApiManager"

    iget-object v3, p0, Lﹳˊ/ˈ;->ˆﾞ:Lcom/google/android/gms/internal/measurement/ˉٴ;

    iget-object v4, p0, Lﹳˊ/ˈ;->ٴʼ:Lj$/util/concurrent/ConcurrentHashMap;

    iget v5, p1, Landroid/os/Message;->what:I

    const-wide/32 v6, 0x493e0

    const/16 v8, 0x11

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    packed-switch v5, :pswitch_data_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unknown message id: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    return v9

    :pswitch_0
    iput-boolean v9, p0, Lﹳˊ/ˈ;->ᴵˊ:Z

    return v11

    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lﹳˊ/ᵔʾ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v0, 0x0

    cmp-long p1, v0, v0

    if-nez p1, :cond_1

    new-instance p1, Lٴﾞ/ﾞʻ;

    new-array v0, v11, [Lٴﾞ/ʼˎ;

    aput-object v10, v0, v9

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v9, v0}, Lٴﾞ/ﾞʻ;-><init>(ILjava/util/List;)V

    iget-object v0, p0, Lﹳˊ/ˈ;->ˈٴ:Lˆˆ/ʽ;

    if-nez v0, :cond_0

    iget-object v0, p0, Lﹳˊ/ˈ;->ᴵᵔ:Landroid/content/Context;

    sget-object v1, Lٴﾞ/ˉʿ;->ⁱˊ:Lٴﾞ/ˉʿ;

    new-instance v2, Lˆˆ/ʽ;

    sget-object v3, Lˆˆ/ʽ;->ʼˎ:Lˑʼ/ᵎˊ;

    sget-object v4, Lᵢʾ/ⁱˊ;->ⁱˊ:Lᵢʾ/ⁱˊ;

    invoke-direct {v2, v0, v3, v1, v4}, Lᵢʾ/ʽ;-><init>(Landroid/content/Context;Lˑʼ/ᵎˊ;Lٴﾞ/ˉʿ;Lᵢʾ/ⁱˊ;)V

    iput-object v2, p0, Lﹳˊ/ˈ;->ˈٴ:Lˆˆ/ʽ;

    :cond_0
    iget-object v0, p0, Lﹳˊ/ˈ;->ˈٴ:Lˆˆ/ʽ;

    invoke-virtual {v0, p1}, Lˆˆ/ʽ;->ﹳٴ(Lٴﾞ/ﾞʻ;)Lˏـ/ˉʿ;

    return v11

    :cond_1
    iget-object p1, p0, Lﹳˊ/ˈ;->ʽʽ:Lٴﾞ/ﾞʻ;

    if-eqz p1, :cond_a

    iget-object v2, p1, Lٴﾞ/ﾞʻ;->ᴵˊ:Ljava/util/List;

    iget p1, p1, Lٴﾞ/ﾞʻ;->ʾˋ:I

    if-nez p1, :cond_4

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-ltz p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lﹳˊ/ˈ;->ʽʽ:Lٴﾞ/ﾞʻ;

    iget-object v2, p1, Lٴﾞ/ﾞʻ;->ᴵˊ:Ljava/util/List;

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p1, Lٴﾞ/ﾞʻ;->ᴵˊ:Ljava/util/List;

    :cond_3
    iget-object p1, p1, Lٴﾞ/ﾞʻ;->ᴵˊ:Ljava/util/List;

    invoke-interface {p1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_4
    :goto_0
    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lﹳˊ/ˈ;->ʽʽ:Lٴﾞ/ﾞʻ;

    if-eqz p1, :cond_a

    iget v2, p1, Lٴﾞ/ﾞʻ;->ʾˋ:I

    if-gtz v2, :cond_7

    iget-boolean v2, p0, Lﹳˊ/ˈ;->ᴵˊ:Z

    if-eqz v2, :cond_5

    goto :goto_4

    :cond_5
    const-class v2, Lٴﾞ/ˆʾ;

    monitor-enter v2

    :try_start_0
    sget-object v4, Lٴﾞ/ˆʾ;->ᴵˊ:Lٴﾞ/ˆʾ;

    if-nez v4, :cond_6

    new-instance v4, Lٴﾞ/ˆʾ;

    invoke-direct {v4, v9}, Lٴﾞ/ˆʾ;-><init>(I)V

    sput-object v4, Lٴﾞ/ˆʾ;->ᴵˊ:Lٴﾞ/ˆʾ;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_6
    :goto_1
    sget-object v4, Lٴﾞ/ˆʾ;->ᴵˊ:Lٴﾞ/ˆʾ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lﹳˊ/ˈ;->ٴᵢ:Lˑʼ/ᵎˊ;

    iget-object v2, v2, Lˑʼ/ᵎˊ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseIntArray;

    const v4, 0xc1fa340

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-eq v2, v5, :cond_7

    if-nez v2, :cond_9

    goto :goto_3

    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_7
    :goto_3
    iget-object v2, p0, Lﹳˊ/ˈ;->ˈٴ:Lˆˆ/ʽ;

    if-nez v2, :cond_8

    iget-object v2, p0, Lﹳˊ/ˈ;->ᴵᵔ:Landroid/content/Context;

    sget-object v4, Lٴﾞ/ˉʿ;->ⁱˊ:Lٴﾞ/ˉʿ;

    new-instance v5, Lˆˆ/ʽ;

    sget-object v6, Lˆˆ/ʽ;->ʼˎ:Lˑʼ/ᵎˊ;

    sget-object v7, Lᵢʾ/ⁱˊ;->ⁱˊ:Lᵢʾ/ⁱˊ;

    invoke-direct {v5, v2, v6, v4, v7}, Lᵢʾ/ʽ;-><init>(Landroid/content/Context;Lˑʼ/ᵎˊ;Lٴﾞ/ˉʿ;Lᵢʾ/ⁱˊ;)V

    iput-object v5, p0, Lﹳˊ/ˈ;->ˈٴ:Lˆˆ/ʽ;

    :cond_8
    iget-object v2, p0, Lﹳˊ/ˈ;->ˈٴ:Lˆˆ/ʽ;

    invoke-virtual {v2, p1}, Lˆˆ/ʽ;->ﹳٴ(Lٴﾞ/ﾞʻ;)Lˏـ/ˉʿ;

    :cond_9
    :goto_4
    iput-object v10, p0, Lﹳˊ/ˈ;->ʽʽ:Lٴﾞ/ﾞʻ;

    :cond_a
    :goto_5
    iget-object p1, p0, Lﹳˊ/ˈ;->ʽʽ:Lٴﾞ/ﾞʻ;

    if-nez p1, :cond_20

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lٴﾞ/ﾞʻ;

    invoke-direct {v2, v9, p1}, Lٴﾞ/ﾞʻ;-><init>(ILjava/util/List;)V

    iput-object v2, p0, Lﹳˊ/ˈ;->ʽʽ:Lٴﾞ/ﾞʻ;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v3, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v11

    :pswitch_2
    invoke-virtual {p0}, Lﹳˊ/ˈ;->ˈ()V

    return v11

    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lﹳˊ/ˆʾ;

    iget-object v0, p1, Lﹳˊ/ˆʾ;->ﹳٴ:Lﹳˊ/ﹳٴ;

    invoke-virtual {v4, v0}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p1, Lﹳˊ/ˆʾ;->ﹳٴ:Lﹳˊ/ﹳٴ;

    invoke-virtual {v4, v0}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lﹳˊ/ʼˎ;

    iget-object v1, v0, Lﹳˊ/ʼˎ;->ﾞʻ:Ljava/util/ArrayList;

    iget-object v2, v0, Lﹳˊ/ʼˎ;->ᵔʾ:Lﹳˊ/ˈ;

    iget-object v3, v0, Lﹳˊ/ʼˎ;->ˈ:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, v2, Lﹳˊ/ˈ;->ˆﾞ:Lcom/google/android/gms/internal/measurement/ˉٴ;

    const/16 v4, 0xf

    invoke-virtual {v1, v4, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v1, v2, Lﹳˊ/ˈ;->ˆﾞ:Lcom/google/android/gms/internal/measurement/ˉٴ;

    const/16 v2, 0x10

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object p1, p1, Lﹳˊ/ˆʾ;->ⁱˊ:Lᴵˈ/ˈ;

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lﹳˊ/ˉʿ;

    if-eqz v4, :cond_b

    invoke-virtual {v4, v0}, Lﹳˊ/ˉʿ;->ⁱˊ(Lﹳˊ/ʼˎ;)[Lᴵˈ/ˈ;

    move-result-object v5

    if-eqz v5, :cond_b

    array-length v6, v5

    move v7, v9

    :goto_7
    if-ge v7, v6, :cond_b

    aget-object v8, v5, v7

    invoke-static {v8, p1}, Lٴﾞ/ʻٴ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    if-ltz v7, :cond_b

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_d
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_8
    if-ge v9, v0, :cond_20

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lﹳˊ/ˉʿ;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    new-instance v4, Lcom/google/android/gms/common/api/UnsupportedApiCallException;

    invoke-direct {v4, p1}, Lcom/google/android/gms/common/api/UnsupportedApiCallException;-><init>(Lᴵˈ/ˈ;)V

    invoke-virtual {v2, v4}, Lﹳˊ/ˉʿ;->ˈ(Ljava/lang/Exception;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lﹳˊ/ˆʾ;

    iget-object v0, p1, Lﹳˊ/ˆʾ;->ﹳٴ:Lﹳˊ/ﹳٴ;

    invoke-virtual {v4, v0}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p1, Lﹳˊ/ˆʾ;->ﹳٴ:Lﹳˊ/ﹳٴ;

    invoke-virtual {v4, v0}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lﹳˊ/ʼˎ;

    iget-object v1, v0, Lﹳˊ/ʼˎ;->ﾞʻ:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto/16 :goto_12

    :cond_e
    iget-boolean p1, v0, Lﹳˊ/ʼˎ;->ٴﹶ:Z

    if-nez p1, :cond_20

    iget-object p1, v0, Lﹳˊ/ʼˎ;->ˑﹳ:Lᵢʾ/ﹳٴ;

    invoke-interface {p1}, Lᵢʾ/ﹳٴ;->ﹳٴ()Z

    move-result p1

    if-nez p1, :cond_f

    invoke-virtual {v0}, Lﹳˊ/ʼˎ;->ˉʿ()V

    return v11

    :cond_f
    invoke-virtual {v0}, Lﹳˊ/ʼˎ;->ᵎﹶ()V

    return v11

    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, Lˉˆ/ٴᴵ;->ˈ(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    move-result-object p1

    throw p1

    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v0}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lﹳˊ/ʼˎ;

    iget-object v0, p1, Lﹳˊ/ʼˎ;->ᵔʾ:Lﹳˊ/ˈ;

    iget-object v0, v0, Lﹳˊ/ˈ;->ˆﾞ:Lcom/google/android/gms/internal/measurement/ˉٴ;

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ⁱˊ(Landroid/os/Handler;)V

    iget-object v0, p1, Lﹳˊ/ʼˎ;->ˑﹳ:Lᵢʾ/ﹳٴ;

    invoke-interface {v0}, Lᵢʾ/ﹳٴ;->ﹳٴ()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p1, Lﹳˊ/ʼˎ;->ʼˎ:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p1, Lﹳˊ/ʼˎ;->ᵎﹶ:Lˑʼ/ᵎˊ;

    iget-object v2, v1, Lˑʼ/ᵎˊ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v1, v1, Lˑʼ/ᵎˊ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_9

    :cond_10
    const-string p1, "Timing out service connection."

    invoke-interface {v0, p1}, Lᵢʾ/ﹳٴ;->ʽ(Ljava/lang/String;)V

    return v11

    :cond_11
    :goto_9
    invoke-virtual {p1}, Lﹳˊ/ʼˎ;->ˆʾ()V

    :cond_12
    return v11

    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v0}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lﹳˊ/ʼˎ;

    iget-object v0, p1, Lﹳˊ/ʼˎ;->ᵔʾ:Lﹳˊ/ˈ;

    iget-object v1, v0, Lﹳˊ/ˈ;->ˆﾞ:Lcom/google/android/gms/internal/measurement/ˉٴ;

    invoke-static {v1}, Lٴﾞ/ʻٴ;->ⁱˊ(Landroid/os/Handler;)V

    iget-boolean v1, p1, Lﹳˊ/ʼˎ;->ٴﹶ:Z

    if-eqz v1, :cond_20

    iget-object v2, p1, Lﹳˊ/ʼˎ;->ﾞᴵ:Lﹳˊ/ﹳٴ;

    iget-object v3, p1, Lﹳˊ/ʼˎ;->ᵔʾ:Lﹳˊ/ˈ;

    iget-object v3, v3, Lﹳˊ/ˈ;->ˆﾞ:Lcom/google/android/gms/internal/measurement/ˉٴ;

    if-eqz v1, :cond_13

    const/16 v1, 0xb

    invoke-virtual {v3, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/16 v1, 0x9

    invoke-virtual {v3, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iput-boolean v9, p1, Lﹳˊ/ʼˎ;->ٴﹶ:Z

    :cond_13
    iget-object v1, v0, Lﹳˊ/ˈ;->ˊʻ:Lᴵˈ/ˑﹳ;

    iget-object v0, v0, Lﹳˊ/ˈ;->ᴵᵔ:Landroid/content/Context;

    sget v2, Lᴵˈ/ﾞᴵ;->ﹳٴ:I

    invoke-virtual {v1, v0, v2}, Lᴵˈ/ﾞᴵ;->ⁱˊ(Landroid/content/Context;I)I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_14

    const-string v0, "Connection timed out waiting for Google Play services update to complete."

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x15

    invoke-direct {v1, v2, v0, v10, v10}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lᴵˈ/ⁱˊ;)V

    goto :goto_a

    :cond_14
    const-string v0, "API failed to connect while resuming due to an unknown error."

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x16

    invoke-direct {v1, v2, v0, v10, v10}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lᴵˈ/ⁱˊ;)V

    :goto_a
    invoke-virtual {p1, v1}, Lﹳˊ/ʼˎ;->ⁱˊ(Lcom/google/android/gms/common/api/Status;)V

    iget-object p1, p1, Lﹳˊ/ʼˎ;->ˑﹳ:Lᵢʾ/ﹳٴ;

    const-string v0, "Timing out connection while resuming."

    invoke-interface {p1, v0}, Lᵢʾ/ﹳٴ;->ʽ(Ljava/lang/String;)V

    return v11

    :pswitch_8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lיـ/ﹳٴ;

    invoke-direct {p1, v1}, Lיـ/ﹳٴ;-><init>(Lיـ/ﾞᴵ;)V

    :cond_15
    :goto_b
    invoke-virtual {p1}, Lיـ/ﹳٴ;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lיـ/ﹳٴ;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lﹳˊ/ﹳٴ;

    invoke-virtual {v4, v0}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lﹳˊ/ʼˎ;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lﹳˊ/ʼˎ;->ʼᐧ()V

    goto :goto_b

    :cond_16
    invoke-virtual {v1}, Lיـ/ﾞᴵ;->clear()V

    return v11

    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v0}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lﹳˊ/ʼˎ;

    iget-object v0, p1, Lﹳˊ/ʼˎ;->ᵔʾ:Lﹳˊ/ˈ;

    iget-object v0, v0, Lﹳˊ/ˈ;->ˆﾞ:Lcom/google/android/gms/internal/measurement/ˉٴ;

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ⁱˊ(Landroid/os/Handler;)V

    iget-boolean v0, p1, Lﹳˊ/ʼˎ;->ٴﹶ:Z

    if-eqz v0, :cond_20

    invoke-virtual {p1}, Lﹳˊ/ʼˎ;->ˉʿ()V

    return v11

    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lᵢʾ/ʽ;

    invoke-virtual {p0, p1}, Lﹳˊ/ˈ;->ʽ(Lᵢʾ/ʽ;)Lﹳˊ/ʼˎ;

    return v11

    :pswitch_b
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Application;

    if-eqz p1, :cond_20

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    invoke-static {p1}, Lﹳˊ/ʽ;->ⁱˊ(Landroid/app/Application;)V

    sget-object p1, Lﹳˊ/ʽ;->ᴵᵔ:Lﹳˊ/ʽ;

    new-instance v0, Lﹳˊ/ᵔᵢ;

    invoke-direct {v0, p0}, Lﹳˊ/ᵔᵢ;-><init>(Lﹳˊ/ˈ;)V

    invoke-virtual {p1, v0}, Lﹳˊ/ʽ;->ﹳٴ(Lﹳˊ/ⁱˊ;)V

    iget-object v0, p1, Lﹳˊ/ʽ;->ʾˋ:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object p1, p1, Lﹳˊ/ʽ;->ᴵˊ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_18

    invoke-static {}, Lᵎᴵ/ʽ;->ⁱˊ()Z

    move-result v1

    if-nez v1, :cond_17

    new-instance v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    invoke-static {v1}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    invoke-virtual {p1, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_18

    iget p1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v1, 0x64

    if-le p1, v1, :cond_18

    invoke-virtual {v0, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_c

    :cond_17
    move p1, v11

    goto :goto_d

    :cond_18
    :goto_c
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    :goto_d
    if-nez p1, :cond_20

    iput-wide v6, p0, Lﹳˊ/ˈ;->ʾˋ:J

    return v11

    :pswitch_c
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lᴵˈ/ⁱˊ;

    invoke-virtual {v4}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lﹳˊ/ʼˎ;

    iget v4, v3, Lﹳˊ/ʼˎ;->ˆʾ:I

    if-ne v4, v0, :cond_19

    goto :goto_e

    :cond_1a
    move-object v3, v10

    :goto_e
    if-eqz v3, :cond_1c

    iget v0, p1, Lᴵˈ/ⁱˊ;->ᴵˊ:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1b

    iget-object v1, p0, Lﹳˊ/ˈ;->ˊʻ:Lᴵˈ/ˑﹳ;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Lᴵˈ/ᵎﹶ;->ˑﹳ:I

    invoke-static {v0}, Lᴵˈ/ⁱˊ;->ﹳٴ(I)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lᴵˈ/ⁱˊ;->ˈٴ:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Error resolution was canceled by the user, original error message: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v8, p1, v10, v10}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lᴵˈ/ⁱˊ;)V

    invoke-virtual {v3, v2}, Lﹳˊ/ʼˎ;->ⁱˊ(Lcom/google/android/gms/common/api/Status;)V

    return v11

    :cond_1b
    iget-object v0, v3, Lﹳˊ/ʼˎ;->ﾞᴵ:Lﹳˊ/ﹳٴ;

    invoke-static {v0, p1}, Lﹳˊ/ˈ;->ⁱˊ(Lﹳˊ/ﹳٴ;Lᴵˈ/ⁱˊ;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {v3, p1}, Lﹳˊ/ʼˎ;->ⁱˊ(Lcom/google/android/gms/common/api/Status;)V

    return v11

    :cond_1c
    const-string p1, "Could not find API instance "

    const-string v1, " while trying to fail enqueued calls."

    invoke-static {v0, p1, v1}, Lʼﾞ/ˊˋ;->ʼᐧ(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    nop

    return v11

    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lﹳˊ/ˉˆ;

    iget-object v0, p1, Lﹳˊ/ˉˆ;->ʽ:Lˆˆ/ʽ;

    iget-object v1, p1, Lﹳˊ/ˉˆ;->ﹳٴ:Lﹳˊ/ᵔﹳ;

    iget-object v0, v0, Lᵢʾ/ʽ;->ˑﹳ:Lﹳˊ/ﹳٴ;

    invoke-virtual {v4, v0}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lﹳˊ/ʼˎ;

    if-nez v0, :cond_1d

    iget-object v0, p1, Lﹳˊ/ˉˆ;->ʽ:Lˆˆ/ʽ;

    invoke-virtual {p0, v0}, Lﹳˊ/ˈ;->ʽ(Lᵢʾ/ʽ;)Lﹳˊ/ʼˎ;

    move-result-object v0

    :cond_1d
    iget-object v2, v0, Lﹳˊ/ʼˎ;->ˑﹳ:Lᵢʾ/ﹳٴ;

    invoke-interface {v2}, Lᵢʾ/ﹳٴ;->ﾞʻ()Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lﹳˊ/ˈ;->ᵎⁱ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    iget p1, p1, Lﹳˊ/ˉˆ;->ⁱˊ:I

    if-eq v2, p1, :cond_1e

    sget-object p1, Lﹳˊ/ˈ;->ˈʿ:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v1, p1}, Lﹳˊ/ᵔﹳ;->ʽ(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0}, Lﹳˊ/ʼˎ;->ʼᐧ()V

    return v11

    :cond_1e
    invoke-virtual {v0, v1}, Lﹳˊ/ʼˎ;->ᵔʾ(Lﹳˊ/ˉʿ;)V

    return v11

    :pswitch_e
    invoke-virtual {v4}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lﹳˊ/ʼˎ;

    iget-object v1, v0, Lﹳˊ/ʼˎ;->ᵔʾ:Lﹳˊ/ˈ;

    iget-object v1, v1, Lﹳˊ/ˈ;->ˆﾞ:Lcom/google/android/gms/internal/measurement/ˉٴ;

    invoke-static {v1}, Lٴﾞ/ʻٴ;->ⁱˊ(Landroid/os/Handler;)V

    iput-object v10, v0, Lﹳˊ/ʼˎ;->ˉʿ:Lᴵˈ/ⁱˊ;

    invoke-virtual {v0}, Lﹳˊ/ʼˎ;->ˉʿ()V

    goto :goto_f

    :pswitch_f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, Lˉˆ/ٴᴵ;->ˈ(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    move-result-object p1

    throw p1

    :pswitch_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eq v11, p1, :cond_1f

    goto :goto_10

    :cond_1f
    const-wide/16 v6, 0x2710

    :goto_10
    iput-wide v6, p0, Lﹳˊ/ˈ;->ʾˋ:J

    const/16 p1, 0xc

    invoke-virtual {v3, p1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v4}, Lj$/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lﹳˊ/ﹳٴ;

    invoke-virtual {v3, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-wide v4, p0, Lﹳˊ/ˈ;->ʾˋ:J

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_11

    :cond_20
    :goto_12
    return v11

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_d
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_d
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ʽ(Lᵢʾ/ʽ;)Lﹳˊ/ʼˎ;
    .locals 3

    .prologue
    iget-object v0, p1, Lᵢʾ/ʽ;->ˑﹳ:Lﹳˊ/ﹳٴ;

    iget-object v1, p0, Lﹳˊ/ˈ;->ٴʼ:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lﹳˊ/ʼˎ;

    if-nez v2, :cond_0

    new-instance v2, Lﹳˊ/ʼˎ;

    invoke-direct {v2, p0, p1}, Lﹳˊ/ʼˎ;-><init>(Lﹳˊ/ˈ;Lᵢʾ/ʽ;)V

    invoke-virtual {v1, v0, v2}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p1, v2, Lﹳˊ/ʼˎ;->ˑﹳ:Lᵢʾ/ﹳٴ;

    invoke-interface {p1}, Lᵢʾ/ﹳٴ;->ﾞʻ()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lﹳˊ/ˈ;->ᵔי:Lיـ/ﾞᴵ;

    invoke-virtual {p1, v0}, Lיـ/ﾞᴵ;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v2}, Lﹳˊ/ʼˎ;->ˉʿ()V

    return-object v2
.end method

.method public final ˈ()V
    .locals 6

    .prologue
    iget-object v0, p0, Lﹳˊ/ˈ;->ʽʽ:Lٴﾞ/ﾞʻ;

    if-eqz v0, :cond_5

    iget v1, v0, Lٴﾞ/ﾞʻ;->ʾˋ:I

    if-gtz v1, :cond_2

    iget-boolean v1, p0, Lﹳˊ/ˈ;->ᴵˊ:Z

    if-eqz v1, :cond_0

    goto :goto_3

    :cond_0
    const-class v1, Lٴﾞ/ˆʾ;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lٴﾞ/ˆʾ;->ᴵˊ:Lٴﾞ/ˆʾ;

    if-nez v2, :cond_1

    new-instance v2, Lٴﾞ/ˆʾ;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lٴﾞ/ˆʾ;-><init>(I)V

    sput-object v2, Lٴﾞ/ˆʾ;->ᴵˊ:Lٴﾞ/ˆʾ;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v2, Lٴﾞ/ˆʾ;->ᴵˊ:Lٴﾞ/ˆʾ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lﹳˊ/ˈ;->ٴᵢ:Lˑʼ/ᵎˊ;

    iget-object v1, v1, Lˑʼ/ᵎˊ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseIntArray;

    const v2, 0xc1fa340

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v3, :cond_2

    if-nez v1, :cond_4

    goto :goto_2

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    :goto_2
    iget-object v1, p0, Lﹳˊ/ˈ;->ˈٴ:Lˆˆ/ʽ;

    if-nez v1, :cond_3

    iget-object v1, p0, Lﹳˊ/ˈ;->ᴵᵔ:Landroid/content/Context;

    sget-object v2, Lٴﾞ/ˉʿ;->ⁱˊ:Lٴﾞ/ˉʿ;

    new-instance v3, Lˆˆ/ʽ;

    sget-object v4, Lˆˆ/ʽ;->ʼˎ:Lˑʼ/ᵎˊ;

    sget-object v5, Lᵢʾ/ⁱˊ;->ⁱˊ:Lᵢʾ/ⁱˊ;

    invoke-direct {v3, v1, v4, v2, v5}, Lᵢʾ/ʽ;-><init>(Landroid/content/Context;Lˑʼ/ᵎˊ;Lٴﾞ/ˉʿ;Lᵢʾ/ⁱˊ;)V

    iput-object v3, p0, Lﹳˊ/ˈ;->ˈٴ:Lˆˆ/ʽ;

    :cond_3
    iget-object v1, p0, Lﹳˊ/ˈ;->ˈٴ:Lˆˆ/ʽ;

    invoke-virtual {v1, v0}, Lˆˆ/ʽ;->ﹳٴ(Lٴﾞ/ﾞʻ;)Lˏـ/ˉʿ;

    :cond_4
    :goto_3
    const/4 v0, 0x0

    iput-object v0, p0, Lﹳˊ/ˈ;->ʽʽ:Lٴﾞ/ﾞʻ;

    :cond_5
    return-void
.end method

.method public final ﹳٴ(Lᴵˈ/ⁱˊ;I)Z
    .locals 7

    .prologue
    iget-object v0, p0, Lﹳˊ/ˈ;->ˊʻ:Lᴵˈ/ˑﹳ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lﹳˊ/ˈ;->ᴵᵔ:Landroid/content/Context;

    invoke-static {v1}, Lˑˊ/ﹳٴ;->ﾞᴵ(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    iget v2, p1, Lᴵˈ/ⁱˊ;->ᴵˊ:I

    iget-object p1, p1, Lᴵˈ/ⁱˊ;->ʽʽ:Landroid/app/PendingIntent;

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    move v5, v4

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_0
    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    invoke-virtual {v0, v2, v1, p1}, Lᴵˈ/ﾞᴵ;->ﹳٴ(ILandroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    const/high16 p1, 0xc000000

    invoke-static {v1, v3, v5, p1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_4

    sget v5, Lcom/google/android/gms/common/api/GoogleApiActivity;->ᴵˊ:I

    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/google/android/gms/common/api/GoogleApiActivity;

    invoke-direct {v5, v1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "pending_intent"

    invoke-virtual {v5, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "failing_client_id"

    invoke-virtual {v5, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "notify_manager"

    invoke-virtual {v5, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget p1, Lᵢˆ/ˈ;->ﹳٴ:I

    const/high16 p2, 0x8000000

    or-int/2addr p1, p2

    invoke-static {v1, v3, v5, p1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lᴵˈ/ˑﹳ;->ﾞᴵ(Landroid/content/Context;ILandroid/app/PendingIntent;)V

    return v4

    :cond_4
    :goto_2
    return v3
.end method

.method public final ﾞᴵ(Lᴵˈ/ⁱˊ;I)V
    .locals 3

    .prologue
    invoke-virtual {p0, p1, p2}, Lﹳˊ/ˈ;->ﹳٴ(Lᴵˈ/ⁱˊ;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    const/4 v1, 0x0

    iget-object v2, p0, Lﹳˊ/ˈ;->ˆﾞ:Lcom/google/android/gms/internal/measurement/ˉٴ;

    invoke-virtual {v2, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
