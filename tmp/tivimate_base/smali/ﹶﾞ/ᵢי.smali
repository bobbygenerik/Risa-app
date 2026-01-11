.class public final Lﹶﾞ/ᵢי;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﹶﾞ/יﹳ;


# static fields
.field public static volatile ﹳﹳ:Lﹶﾞ/ᵢי;


# instance fields
.field public ʻᵎ:Lﹶﾞ/ﹶʽ;

.field public ʼˈ:I

.field public ʽʽ:Lﹶﾞ/ˉʿ;

.field public final ʾˋ:Lﹶﾞ/ـﹶ;

.field public ʿ:Ljava/util/ArrayList;

.field public ʿᵢ:Ljava/util/ArrayList;

.field public final ˆﾞ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public ˈʿ:J

.field public ˈˏ:J

.field public ˈٴ:Lﹶﾞ/ᵎᵔ;

.field public ˈⁱ:Z

.field public ˉـ:Ljava/nio/channels/FileChannel;

.field public ˉٴ:Lﹶﾞ/ʿ;

.field public ˊʻ:Lﹶﾞ/ʽ;

.field public ˊˋ:I

.field public ˊᵔ:Ljava/lang/String;

.field public final ˋᵔ:Ljava/util/LinkedList;

.field public final ˏᵢ:Ljava/util/HashMap;

.field public ˑٴ:Ljava/util/ArrayList;

.field public ـˏ:Z

.field public ـﹶ:Lﹶﾞ/ˆʻ;

.field public final ٴʼ:Lﹶﾞ/ᐧˏ;

.field public final ٴᵢ:Lﹶﾞ/ʿ;

.field public final ᐧᴵ:Ljava/util/HashMap;

.field public final ᐧﾞ:Ljava/util/HashMap;

.field public final ᴵʼ:Ljava/util/HashMap;

.field public final ᴵˊ:Lﹶﾞ/ʿ;

.field public ᴵˑ:Ljava/nio/channels/FileLock;

.field public ᴵᵔ:Lﹶﾞ/ʻˆ;

.field public ᵎˊ:Lﹶﾞ/ᴵʼ;

.field public ᵎᵔ:J

.field public ᵎⁱ:Lﹶﾞ/ˆˎ;

.field public final ᵔי:Lﹶﾞ/ᵎʻ;

.field public ᵔٴ:Z

.field public ﹳـ:Z

.field public final ﹶᐧ:Lᐧﹳ/ʽ;


# direct methods
.method public constructor <init>(Lـﹶ/ﾞʻ;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lﹶﾞ/ᵢי;->ˆﾞ:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lﹶﾞ/ᵢי;->ˋᵔ:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lﹶﾞ/ᵢי;->ᴵʼ:Ljava/util/HashMap;

    new-instance v0, Lᐧﹳ/ʽ;

    const/16 v1, 0x1b

    invoke-direct {v0, v1, p0}, Lᐧﹳ/ʽ;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lﹶﾞ/ᵢי;->ﹶᐧ:Lᐧﹳ/ʽ;

    iget-object v0, p1, Lـﹶ/ﾞʻ;->ʾˋ:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lﹶﾞ/ᵎʻ;->ˉˆ(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/ﹳـ;Ljava/lang/Long;)Lﹶﾞ/ᵎʻ;

    move-result-object v0

    iput-object v0, p0, Lﹶﾞ/ᵢי;->ᵔי:Lﹶﾞ/ᵎʻ;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lﹶﾞ/ᵢי;->ᵎᵔ:J

    new-instance v0, Lﹶﾞ/ᐧˏ;

    invoke-direct {v0, p0}, Lﹶﾞ/ˏʻ;-><init>(Lﹶﾞ/ᵢי;)V

    iput-object v0, p0, Lﹶﾞ/ᵢי;->ٴʼ:Lﹶﾞ/ᐧˏ;

    new-instance v0, Lﹶﾞ/ʿ;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lﹶﾞ/ʿ;-><init>(Lﹶﾞ/ᵢי;I)V

    invoke-virtual {v0}, Lﹶﾞ/ˎᵎ;->ʽˑ()V

    iput-object v0, p0, Lﹶﾞ/ᵢי;->ٴᵢ:Lﹶﾞ/ʿ;

    new-instance v0, Lﹶﾞ/ʿ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lﹶﾞ/ʿ;-><init>(Lﹶﾞ/ᵢי;I)V

    invoke-virtual {v0}, Lﹶﾞ/ˎᵎ;->ʽˑ()V

    iput-object v0, p0, Lﹶﾞ/ᵢי;->ᴵˊ:Lﹶﾞ/ʿ;

    new-instance v0, Lﹶﾞ/ـﹶ;

    invoke-direct {v0, p0}, Lﹶﾞ/ـﹶ;-><init>(Lﹶﾞ/ᵢי;)V

    invoke-virtual {v0}, Lﹶﾞ/ˎᵎ;->ʽˑ()V

    iput-object v0, p0, Lﹶﾞ/ᵢי;->ʾˋ:Lﹶﾞ/ـﹶ;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lﹶﾞ/ᵢי;->ᐧﾞ:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lﹶﾞ/ᵢי;->ᐧᴵ:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lﹶﾞ/ᵢי;->ˏᵢ:Ljava/util/HashMap;

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v0

    new-instance v1, Lﹳˊ/יـ;

    invoke-direct {v1, p0, p1}, Lﹳˊ/יـ;-><init>(Lﹶﾞ/ᵢי;Lـﹶ/ﾞʻ;)V

    invoke-virtual {v0, v1}, Lﹶﾞ/ʻˋ;->ˑˆ(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static ʼˈ(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_0
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setShareIdentityEnabled(Z)Landroid/app/BroadcastOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static final ʽʽ(Lcom/google/android/gms/internal/measurement/ᵔⁱ;Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ˆʾ()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ˊﾞ;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ˊﾞ;->ᵔﹳ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ʼᐧ(I)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static ʾˋ(Landroid/content/Context;)Lﹶﾞ/ᵢי;
    .locals 3

    .prologue
    invoke-static {p0}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    sget-object v0, Lﹶﾞ/ᵢי;->ﹳﹳ:Lﹶﾞ/ᵢי;

    if-nez v0, :cond_1

    const-class v0, Lﹶﾞ/ᵢי;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lﹶﾞ/ᵢי;->ﹳﹳ:Lﹶﾞ/ᵢי;

    if-nez v1, :cond_0

    new-instance v1, Lـﹶ/ﾞʻ;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lـﹶ/ﾞʻ;-><init>(Landroid/content/Context;I)V

    new-instance p0, Lﹶﾞ/ᵢי;

    invoke-direct {p0, v1}, Lﹶﾞ/ᵢי;-><init>(Lـﹶ/ﾞʻ;)V

    sput-object p0, Lﹶﾞ/ᵢי;->ﹳﹳ:Lﹶﾞ/ᵢי;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lﹶﾞ/ᵢי;->ﹳﹳ:Lﹶﾞ/ᵢי;

    return-object p0
.end method

.method public static final ˈⁱ(Lﹶﾞ/ʻᐧ;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    iget-object v0, p0, Lﹶﾞ/ʻᐧ;->ˑٴ:Ljava/lang/Boolean;

    iget-object p0, p0, Lﹶﾞ/ʻᐧ;->ᐧᴵ:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p0}, Lⁱʽ/ﹳٴ;->ʼᐧ(Ljava/lang/String;)Lⁱʽ/ﹳٴ;

    move-result-object p0

    iget-object p0, p0, Lⁱʽ/ﹳٴ;->ʾˋ:Ljava/lang/Object;

    check-cast p0, Lﹶﾞ/ʽⁱ;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_1
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static final ـˏ(Lﹶﾞ/ʻᐧ;)Z
    .locals 0

    .prologue
    iget-object p0, p0, Lﹶﾞ/ʻᐧ;->ᴵˊ:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final ᴵˊ(Lcom/google/android/gms/internal/measurement/ᵔⁱ;ILjava/lang/String;)V
    .locals 4

    .prologue
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ˆʾ()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "_err"

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ˊﾞ;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ˊﾞ;->ᵔﹳ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ˊﾞ;->ᴵˊ()Lcom/google/android/gms/internal/measurement/ˊˊ;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/ˊˊ;->ˆʾ(Ljava/lang/String;)V

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/ˊˊ;->ﾞʻ(J)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/ˊﾞ;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/ˊﾞ;->ᴵˊ()Lcom/google/android/gms/internal/measurement/ˊˊ;

    move-result-object v0

    const-string v1, "_ev"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/ˊˊ;->ˆʾ(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/measurement/ˊˊ;->ٴﹶ(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/ˊﾞ;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ˉʿ(Lcom/google/android/gms/internal/measurement/ˊﾞ;)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ˉʿ(Lcom/google/android/gms/internal/measurement/ˊﾞ;)V

    return-void
.end method

.method public static ᵔי(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 2

    .prologue
    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final ﹳـ(Lﹶﾞ/ˎᵎ;)V
    .locals 2

    .prologue
    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lﹶﾞ/ˎᵎ;->ʽʽ:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Component not initialized: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Upload Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final ʻˋ()V
    .locals 2

    .prologue
    iget-object v0, p0, Lﹶﾞ/ᵢי;->ˆﾞ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UploadController is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ʻٴ(ZILjava/lang/Throwable;[BLjava/lang/String;Ljava/util/List;)V
    .locals 17

    .prologue
    move-object/from16 v1, p0

    move/from16 v0, p2

    move-object/from16 v2, p3

    iget-object v9, v1, Lﹶﾞ/ᵢי;->ᴵˊ:Lﹶﾞ/ʿ;

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v3

    invoke-virtual {v3}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ʻˋ()V

    const/4 v10, 0x0

    if-nez p4, :cond_0

    :try_start_0
    new-array v3, v10, [B

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_c

    :cond_0
    move-object/from16 v3, p4

    :goto_0
    iget-object v11, v1, Lﹶﾞ/ᵢי;->ʿ:Ljava/util/ArrayList;

    invoke-static {v11}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    const/4 v12, 0x0

    iput-object v12, v1, Lﹶﾞ/ᵢי;->ʿ:Ljava/util/ArrayList;

    if-eqz p1, :cond_5

    const/16 v4, 0xc8

    if-eq v0, v4, :cond_1

    const/16 v4, 0xcc

    if-ne v0, v4, :cond_2

    move v0, v4

    :cond_1
    if-eqz v2, :cond_5

    :cond_2
    new-instance v4, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x20

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v4, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v4

    iget-object v4, v4, Lﹶﾞ/ﹳـ;->ᵎˊ:Lﹶﾞ/ʼˈ;

    const-string v5, "Network upload failed. Will retry later. code, error"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v2, v3}, Lﹶﾞ/ʼˈ;->ˈ(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, v1, Lﹶﾞ/ᵢי;->ᵎⁱ:Lﹶﾞ/ˆˎ;

    iget-object v2, v2, Lﹶﾞ/ˆˎ;->ᵎⁱ:Lⁱי/ʻᵎ;

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎˊ()Lᵎᴵ/ﹳٴ;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lⁱי/ʻᵎ;->ᵔᵢ(J)V

    const/16 v2, 0x1f7

    if-eq v0, v2, :cond_3

    const/16 v2, 0x1ad

    if-ne v0, v2, :cond_4

    :cond_3
    iget-object v0, v1, Lﹶﾞ/ᵢי;->ᵎⁱ:Lﹶﾞ/ˆˎ;

    iget-object v0, v0, Lﹶﾞ/ˆˎ;->ٴᵢ:Lⁱי/ʻᵎ;

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎˊ()Lᵎᴵ/ﹳٴ;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lⁱי/ʻᵎ;->ᵔᵢ(J)V

    :cond_4
    iget-object v0, v1, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v0}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v0, v11}, Lﹶﾞ/ˉʿ;->ﹳᵢ(Ljava/util/ArrayList;)V

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ˆﾞ()V

    goto/16 :goto_b

    :cond_5
    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v2

    iget-object v2, v2, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v4, "Network upload successful with code, uploadAttempted"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v0, v5, v4}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_6

    :try_start_1
    iget-object v2, v1, Lﹶﾞ/ᵢי;->ᵎⁱ:Lﹶﾞ/ˆˎ;

    iget-object v2, v2, Lﹶﾞ/ˆˎ;->ˉٴ:Lⁱי/ʻᵎ;

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎˊ()Lᵎᴵ/ﹳٴ;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lⁱי/ʻᵎ;->ᵔᵢ(J)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_a

    :cond_6
    :goto_1
    iget-object v2, v1, Lﹶﾞ/ᵢי;->ᵎⁱ:Lﹶﾞ/ˆˎ;

    iget-object v2, v2, Lﹶﾞ/ˆˎ;->ᵎⁱ:Lⁱי/ʻᵎ;

    const-wide/16 v13, 0x0

    invoke-virtual {v2, v13, v14}, Lⁱי/ʻᵎ;->ᵔᵢ(J)V

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ˆﾞ()V

    if-eqz p1, :cond_7

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v2

    iget-object v2, v2, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v4, "Successful upload. Got network response. code, size"

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3, v4}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v0

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v2, "Purged empty bundles"

    invoke-virtual {v0, v2}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    :goto_2
    iget-object v0, v1, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v0}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v0}, Lﹶﾞ/ˉʿ;->ˎʼ()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_8
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-wide/16 v3, -0x1

    sget-object v5, Lﹶﾞ/ˋـ;->ᴵᵔ:Lﹶﾞ/ˋـ;

    if-eqz v2, :cond_b

    :try_start_3
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/internal/measurement/ˊﹳ;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lﹶﾞ/ʾˏ;

    iget-object v7, v2, Lﹶﾞ/ʾˏ;->ʽ:Lﹶﾞ/ˋـ;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v8, v2, Lﹶﾞ/ʾˏ;->ʽ:Lﹶﾞ/ˋـ;

    if-eq v7, v5, :cond_8

    :try_start_4
    iget-object v5, v1, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v5}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    move-object v7, v5

    iget-object v5, v2, Lﹶﾞ/ʾˏ;->ﹳٴ:Ljava/lang/String;

    iget-object v2, v2, Lﹶﾞ/ʾˏ;->ⁱˊ:Ljava/util/Map;

    if-nez v2, :cond_9

    sget-object v2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    :cond_9
    move-object/from16 v16, v7

    move-object v7, v8

    const/4 v8, 0x0

    move-wide v13, v3

    move-object v4, v6

    move-object/from16 v3, p5

    move-object v6, v2

    move-object/from16 v2, v16

    invoke-virtual/range {v2 .. v8}, Lﹶﾞ/ˉʿ;->ʼᵢ(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/ˊﹳ;Ljava/lang/String;Ljava/util/Map;Lﹶﾞ/ˋـ;Ljava/lang/Long;)J

    move-result-wide v5

    sget-object v2, Lﹶﾞ/ˋـ;->ˊʻ:Lﹶﾞ/ˋـ;

    if-ne v7, v2, :cond_a

    cmp-long v2, v5, v13

    if-eqz v2, :cond_a

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ˊﹳ;->ˏי()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ˊﹳ;->ˏי()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    const-wide/16 v13, 0x0

    goto :goto_3

    :catchall_1
    move-exception v0

    goto/16 :goto_9

    :cond_b
    move-wide v13, v3

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/internal/measurement/ˊﹳ;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lﹶﾞ/ʾˏ;

    iget-object v3, v2, Lﹶﾞ/ʾˏ;->ʽ:Lﹶﾞ/ˋـ;

    if-ne v3, v5, :cond_d

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ˊﹳ;->ˏי()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Ljava/lang/Long;

    iget-object v3, v1, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v3}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    move-object v6, v5

    iget-object v5, v2, Lﹶﾞ/ʾˏ;->ﹳٴ:Ljava/lang/String;

    iget-object v7, v2, Lﹶﾞ/ʾˏ;->ⁱˊ:Ljava/util/Map;

    if-nez v7, :cond_c

    sget-object v7, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    :cond_c
    iget-object v2, v2, Lﹶﾞ/ʾˏ;->ʽ:Lﹶﾞ/ˋـ;

    move-object/from16 v16, v6

    move-object v6, v7

    move-object v7, v2

    move-object v2, v3

    move-object/from16 v3, p5

    invoke-virtual/range {v2 .. v8}, Lﹶﾞ/ˉʿ;->ʼᵢ(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/ˊﹳ;Ljava/lang/String;Ljava/util/Map;Lﹶﾞ/ˋـ;Ljava/lang/Long;)J

    move-object/from16 v5, v16

    goto :goto_4

    :cond_d
    move-object/from16 v3, p5

    goto :goto_4

    :cond_e
    move-object/from16 v3, p5

    move-object/from16 v16, v5

    iget-object v0, v1, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v0}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    const/4 v2, 0x1

    new-array v4, v2, [Lﹶﾞ/ˋـ;

    aput-object v16, v4, v10

    invoke-static {v4}, Lﹶﾞ/ʽᐧ;->ﹳٴ([Lﹶﾞ/ˋـ;)Lﹶﾞ/ʽᐧ;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v2}, Lﹶﾞ/ˉʿ;->יˉ(Ljava/lang/String;Lﹶﾞ/ʽᐧ;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lﹶﾞ/ˑˉ;

    iget-wide v4, v0, Lﹶﾞ/ˑˉ;->ﾞᴵ:J

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎˊ()Lᵎᴵ/ﹳٴ;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-object v0, Lﹶﾞ/ᴵᵔ;->ˊʻ:Lﹶﾞ/ˈٴ;

    invoke-virtual {v0, v12}, Lﹶﾞ/ˈٴ;->ﹳٴ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    add-long/2addr v15, v4

    cmp-long v0, v6, v15

    if-lez v0, :cond_f

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v0

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ᵎⁱ:Lﹶﾞ/ʼˈ;

    const-string v2, "[sgtm] client batches are queued too long. appId, creationTime"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v2}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_f
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v0, v10

    :goto_5
    if-ge v0, v2, :cond_11

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    check-cast v4, Ljava/lang/Long;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v0, v1, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v0}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lﹶﾞ/ˉʿ;->ˑˆ(J)V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_6
    move v0, v5

    goto :goto_5

    :catch_1
    move-exception v0

    :try_start_6
    iget-object v6, v1, Lﹶﾞ/ᵢי;->ʿᵢ:Ljava/util/ArrayList;

    if-eqz v6, :cond_10

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    goto :goto_6

    :cond_10
    throw v0

    :cond_11
    iget-object v0, v1, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v0}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v0}, Lﹶﾞ/ˉʿ;->ʻˆ()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    iget-object v0, v1, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v0}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v0}, Lﹶﾞ/ˉʿ;->ˏʻ()V

    iput-object v12, v1, Lﹶﾞ/ᵢי;->ʿᵢ:Ljava/util/ArrayList;

    invoke-static {v9}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v9}, Lﹶﾞ/ʿ;->ـʻ()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, v1, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v0}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v0, v3}, Lﹶﾞ/ˉʿ;->ﾞˋ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {v1, v3}, Lﹶﾞ/ᵢי;->ʼᐧ(Ljava/lang/String;)V

    :goto_7
    const-wide/16 v2, 0x0

    goto :goto_8

    :cond_12
    invoke-static {v9}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v9}, Lﹶﾞ/ʿ;->ـʻ()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ٴʼ()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ˉʿ()V

    goto :goto_7

    :cond_13
    iput-wide v13, v1, Lﹶﾞ/ᵢי;->ᵎᵔ:J

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ˆﾞ()V

    goto :goto_7

    :goto_8
    iput-wide v2, v1, Lﹶﾞ/ᵢי;->ˈʿ:J

    goto :goto_b

    :goto_9
    iget-object v2, v1, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v2}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v2}, Lﹶﾞ/ˉʿ;->ˏʻ()V

    throw v0
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_a
    :try_start_8
    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v2

    iget-object v2, v2, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v3, "Database error while trying to delete uploaded bundles"

    invoke-virtual {v2, v0, v3}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎˊ()Lᵎᴵ/ﹳٴ;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lﹶﾞ/ᵢי;->ˈʿ:J

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v0

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v2, "Disable upload, time"

    iget-wide v3, v1, Lﹶﾞ/ᵢי;->ˈʿ:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_b
    iput-boolean v10, v1, Lﹶﾞ/ᵢי;->ﹳـ:Z

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵔٴ()V

    return-void

    :goto_c
    iput-boolean v10, v1, Lﹶﾞ/ᵢי;->ﹳـ:Z

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵔٴ()V

    throw v0
.end method

.method public final ʻᵎ()Lﹶﾞ/ـﹶ;
    .locals 1

    iget-object v0, p0, Lﹶﾞ/ᵢי;->ʾˋ:Lﹶﾞ/ـﹶ;

    invoke-static {v0}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    return-object v0
.end method

.method public final ʼʼ(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 9

    .prologue
    iget-object v0, p0, Lﹶﾞ/ᵢי;->ᴵˊ:Lﹶﾞ/ʿ;

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v1

    invoke-virtual {v1}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ʻˋ()V

    invoke-static {p1}, Lٴﾞ/ʻٴ;->ʽ(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-nez p4, :cond_0

    :try_start_0
    new-array p4, v1, [B

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_9

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v2

    iget-object v2, v2, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v3, "onConfigFetched. Response size"

    array-length v4, p4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v2}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v2}, Lﹶﾞ/ˉʿ;->ˎʼ()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v2}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v2, p1}, Lﹶﾞ/ˉʿ;->ᵢﹳ(Ljava/lang/String;)Lﹶﾞ/ʿᵢ;

    move-result-object v2

    const/16 v3, 0xc8

    const/16 v5, 0x130

    if-eq p2, v3, :cond_2

    const/16 v3, 0xcc

    if-eq p2, v3, :cond_2

    if-ne p2, v5, :cond_1

    move p2, v5

    goto :goto_1

    :cond_1
    move v3, v1

    goto :goto_2

    :cond_2
    :goto_1
    if-nez p3, :cond_1

    const/4 v3, 0x1

    :goto_2
    if-nez v2, :cond_3

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object p2

    iget-object p2, p2, Lﹶﾞ/ﹳـ;->ᵎⁱ:Lﹶﾞ/ʼˈ;

    const-string p3, "App does not exist in onConfigFetched. appId"

    invoke-static {p1}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_7

    :catchall_1
    move-exception p1

    goto/16 :goto_8

    :cond_3
    const/16 v6, 0x194

    const/4 v7, 0x0

    iget-object v8, p0, Lﹶﾞ/ᵢי;->ʾˋ:Lﹶﾞ/ـﹶ;

    if-nez v3, :cond_7

    if-ne p2, v6, :cond_4

    goto :goto_3

    :cond_4
    :try_start_2
    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎˊ()Lᵎᴵ/ﹳٴ;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    invoke-virtual {v2, p4, p5}, Lﹶﾞ/ʿᵢ;->ᵎﹶ(J)V

    iget-object p4, p0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {p4}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {p4, v2, v1}, Lﹶﾞ/ˉʿ;->ᐧⁱ(Lﹶﾞ/ʿᵢ;Z)V

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object p4

    iget-object p4, p4, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string p5, "Fetching config failed. code, error"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p4, v0, p3, p5}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v8}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    iget-object p3, v8, Lﹶﾞ/ـﹶ;->ˆﾞ:Lיـ/ˑﹳ;

    invoke-virtual {p3, p1, v7}, Lיـ/ﹳᐧ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lﹶﾞ/ᵢי;->ᵎⁱ:Lﹶﾞ/ˆˎ;

    iget-object p1, p1, Lﹶﾞ/ˆˎ;->ᵎⁱ:Lⁱי/ʻᵎ;

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎˊ()Lᵎᴵ/ﹳٴ;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Lⁱי/ʻᵎ;->ᵔᵢ(J)V

    const/16 p1, 0x1f7

    if-eq p2, p1, :cond_5

    const/16 p1, 0x1ad

    if-ne p2, p1, :cond_6

    :cond_5
    iget-object p1, p0, Lﹶﾞ/ᵢי;->ᵎⁱ:Lﹶﾞ/ˆˎ;

    iget-object p1, p1, Lﹶﾞ/ˆˎ;->ٴᵢ:Lⁱי/ʻᵎ;

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎˊ()Lᵎᴵ/ﹳٴ;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lⁱי/ʻᵎ;->ᵔᵢ(J)V

    :cond_6
    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ˆﾞ()V

    goto/16 :goto_7

    :cond_7
    :goto_3
    const-string p3, "Last-Modified"

    invoke-static {p3, p5}, Lﹶﾞ/ᵢי;->ᵔי(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p3

    const-string v3, "ETag"

    invoke-static {v3, p5}, Lﹶﾞ/ᵢי;->ᵔי(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p5

    if-eq p2, v6, :cond_9

    if-ne p2, v5, :cond_8

    goto :goto_4

    :cond_8
    invoke-static {v8}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v8, p1, p3, p5, p4}, Lﹶﾞ/ـﹶ;->ﹶʽ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    goto :goto_5

    :cond_9
    :goto_4
    invoke-static {v8}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v8, p1}, Lﹶﾞ/ـﹶ;->ᵢˋ(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ﹳⁱ;

    move-result-object p3

    if-nez p3, :cond_a

    invoke-static {v8}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v8, p1, v7, v7, v7}, Lﹶﾞ/ـﹶ;->ﹶʽ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    :cond_a
    :goto_5
    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎˊ()Lᵎᴵ/ﹳٴ;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {v2, p3, p4}, Lﹶﾞ/ʿᵢ;->ﾞᴵ(J)V

    iget-object p3, p0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {p3}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {p3, v2, v1}, Lﹶﾞ/ˉʿ;->ᐧⁱ(Lﹶﾞ/ʿᵢ;Z)V

    if-ne p2, v6, :cond_b

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object p2

    iget-object p2, p2, Lﹶﾞ/ﹳـ;->ᵎˊ:Lﹶﾞ/ʼˈ;

    const-string p3, "Config not found. Using empty config. appId"

    invoke-virtual {p2, p1, p3}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object p1

    iget-object p1, p1, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string p3, "Successfully fetched config. Got network response. code, size"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2, v4, p3}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_6
    invoke-static {v0}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v0}, Lﹶﾞ/ʿ;->ـʻ()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ٴʼ()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ˉʿ()V

    goto :goto_7

    :cond_c
    invoke-static {v0}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v0}, Lﹶﾞ/ʿ;->ـʻ()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {p1}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v2}, Lﹶﾞ/ʿᵢ;->ˈٴ()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lﹶﾞ/ˉʿ;->ﾞˋ(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {v2}, Lﹶﾞ/ʿᵢ;->ˈٴ()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lﹶﾞ/ᵢי;->ʼᐧ(Ljava/lang/String;)V

    goto :goto_7

    :cond_d
    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ˆﾞ()V

    :goto_7
    iget-object p1, p0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {p1}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {p1}, Lﹶﾞ/ˉʿ;->ʻˆ()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object p1, p0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {p1}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {p1}, Lﹶﾞ/ˉʿ;->ˏʻ()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iput-boolean v1, p0, Lﹶﾞ/ᵢי;->ـˏ:Z

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵔٴ()V

    return-void

    :goto_8
    :try_start_4
    iget-object p2, p0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {p2}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {p2}, Lﹶﾞ/ˉʿ;->ˏʻ()V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_9
    iput-boolean v1, p0, Lﹶﾞ/ᵢי;->ـˏ:Z

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵔٴ()V

    throw p1
.end method

.method public final ʼˎ(Lﹶﾞ/ʿᵢ;Lcom/google/android/gms/internal/measurement/ʽʾ;)V
    .locals 17

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v2

    invoke-virtual {v2}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    invoke-virtual {v0}, Lﹶﾞ/ᵢי;->ʻˋ()V

    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v2, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ᐧˎ()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/EnumMap;

    const-class v4, Lﹶﾞ/ⁱˉ;

    invoke-direct {v3, v4}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {}, Lﹶﾞ/ⁱˉ;->values()[Lﹶﾞ/ⁱˉ;

    move-result-object v5

    array-length v5, v5

    sget-object v6, Lﹶﾞ/ᵔᵢ;->ᴵˊ:Lﹶﾞ/ᵔᵢ;

    const/4 v7, 0x0

    if-lt v4, v5, :cond_4

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x31

    if-eq v4, v5, :cond_0

    goto :goto_3

    :cond_0
    invoke-static {}, Lﹶﾞ/ⁱˉ;->values()[Lﹶﾞ/ⁱˉ;

    move-result-object v4

    array-length v5, v4

    move v9, v7

    const/4 v10, 0x1

    :goto_0
    if-ge v9, v5, :cond_3

    aget-object v11, v4, v9

    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {}, Lﹶﾞ/ᵔᵢ;->values()[Lﹶﾞ/ᵔᵢ;

    move-result-object v13

    array-length v14, v13

    move v15, v7

    :goto_1
    if-ge v15, v14, :cond_2

    aget-object v7, v13, v15

    iget-char v8, v7, Lﹶﾞ/ᵔᵢ;->ʾˋ:C

    if-ne v8, v10, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v15, v15, 0x1

    const/4 v7, 0x0

    goto :goto_1

    :cond_2
    move-object v7, v6

    :goto_2
    invoke-virtual {v3, v11, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    move v10, v12

    const/4 v7, 0x0

    goto :goto_0

    :cond_3
    new-instance v2, Lᐧﹳ/ʽ;

    invoke-direct {v2, v3}, Lᐧﹳ/ʽ;-><init>(Ljava/util/EnumMap;)V

    goto :goto_4

    :cond_4
    :goto_3
    new-instance v2, Lᐧﹳ/ʽ;

    const/16 v3, 0x18

    invoke-direct {v2, v3}, Lᐧﹳ/ʽ;-><init>(I)V

    :goto_4
    invoke-virtual/range {p1 .. p1}, Lﹶﾞ/ʿᵢ;->ˈٴ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v4

    invoke-virtual {v4}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    invoke-virtual {v0}, Lﹶﾞ/ᵢי;->ʻˋ()V

    invoke-virtual {v0, v3}, Lﹶﾞ/ᵢי;->ﹳٴ(Ljava/lang/String;)Lﹶﾞ/ᐧˎ;

    move-result-object v3

    iget-object v4, v3, Lﹶﾞ/ᐧˎ;->ﹳٴ:Ljava/util/EnumMap;

    sget-object v5, Lﹶﾞ/ⁱˉ;->ᴵˊ:Lﹶﾞ/ⁱˉ;

    invoke-virtual {v4, v5}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lﹶﾞ/ʽⁱ;

    sget-object v8, Lﹶﾞ/ʽⁱ;->ᴵˊ:Lﹶﾞ/ʽⁱ;

    if-nez v7, :cond_5

    move-object v7, v8

    :cond_5
    iget v3, v3, Lﹶﾞ/ᐧˎ;->ⁱˊ:I

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    sget-object v9, Lﹶﾞ/ᵔᵢ;->ᵎⁱ:Lﹶﾞ/ᵔᵢ;

    sget-object v10, Lﹶﾞ/ᵔᵢ;->ٴʼ:Lﹶﾞ/ᵔᵢ;

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eq v7, v13, :cond_7

    if-eq v7, v12, :cond_6

    if-eq v7, v11, :cond_6

    invoke-virtual {v2, v5, v10}, Lᐧﹳ/ʽ;->ˈٴ(Lﹶﾞ/ⁱˉ;Lﹶﾞ/ᵔᵢ;)V

    goto :goto_5

    :cond_6
    invoke-virtual {v2, v5, v3}, Lᐧﹳ/ʽ;->ʽʽ(Lﹶﾞ/ⁱˉ;I)V

    goto :goto_5

    :cond_7
    invoke-virtual {v2, v5, v9}, Lᐧﹳ/ʽ;->ˈٴ(Lﹶﾞ/ⁱˉ;Lﹶﾞ/ᵔᵢ;)V

    :goto_5
    sget-object v5, Lﹶﾞ/ⁱˉ;->ʽʽ:Lﹶﾞ/ⁱˉ;

    invoke-virtual {v4, v5}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lﹶﾞ/ʽⁱ;

    if-nez v4, :cond_8

    goto :goto_6

    :cond_8
    move-object v8, v4

    :goto_6
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v13, 0x1

    if-eq v4, v13, :cond_a

    if-eq v4, v12, :cond_9

    if-eq v4, v11, :cond_9

    invoke-virtual {v2, v5, v10}, Lᐧﹳ/ʽ;->ˈٴ(Lﹶﾞ/ⁱˉ;Lﹶﾞ/ᵔᵢ;)V

    goto :goto_7

    :cond_9
    invoke-virtual {v2, v5, v3}, Lᐧﹳ/ʽ;->ʽʽ(Lﹶﾞ/ⁱˉ;I)V

    goto :goto_7

    :cond_a
    invoke-virtual {v2, v5, v9}, Lᐧﹳ/ʽ;->ˈٴ(Lﹶﾞ/ⁱˉ;Lﹶﾞ/ᵔᵢ;)V

    :goto_7
    invoke-virtual/range {p1 .. p1}, Lﹶﾞ/ʿᵢ;->ˈٴ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v4

    invoke-virtual {v4}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    invoke-virtual {v0}, Lﹶﾞ/ᵢי;->ʻˋ()V

    invoke-virtual {v0, v3}, Lﹶﾞ/ᵢי;->ᵎʻ(Ljava/lang/String;)Lﹶﾞ/ˉˆ;

    move-result-object v4

    invoke-virtual {v0, v3}, Lﹶﾞ/ᵢי;->ﹳٴ(Ljava/lang/String;)Lﹶﾞ/ᐧˎ;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5, v2}, Lﹶﾞ/ᵢי;->ʽᵔ(Ljava/lang/String;Lﹶﾞ/ˉˆ;Lﹶﾞ/ᐧˎ;Lᐧﹳ/ʽ;)Lﹶﾞ/ˉˆ;

    move-result-object v3

    iget-object v4, v3, Lﹶﾞ/ˉˆ;->ˈ:Ljava/lang/String;

    iget-object v3, v3, Lﹶﾞ/ˉˆ;->ʽ:Ljava/lang/Boolean;

    invoke-static {v3}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v5, v1, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v5, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ˊﾞ(Z)V

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v3, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ـʻ(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {v0}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v3

    invoke-virtual {v3}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    invoke-virtual {v0}, Lﹶﾞ/ᵢי;->ʻˋ()V

    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v3, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʼᵎ()Lcom/google/android/gms/internal/measurement/ʻˈ;

    move-result-object v3

    invoke-static {v3}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "_npa"

    if-eqz v4, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/ˆʻ;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ˆʻ;->ﹳᐧ()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    goto :goto_8

    :cond_d
    const/4 v4, 0x0

    :goto_8
    if-eqz v4, :cond_16

    iget-object v3, v2, Lᐧﹳ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v3, Ljava/util/EnumMap;

    sget-object v7, Lﹶﾞ/ⁱˉ;->ᴵᵔ:Lﹶﾞ/ⁱˉ;

    invoke-virtual {v3, v7}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lﹶﾞ/ᵔᵢ;

    if-nez v3, :cond_e

    move-object v3, v6

    :cond_e
    if-eq v3, v6, :cond_f

    goto/16 :goto_a

    :cond_f
    iget-object v3, v0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v3}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual/range {p1 .. p1}, Lﹶﾞ/ʿᵢ;->ˈٴ()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v5}, Lﹶﾞ/ˉʿ;->ᐧˏ(Ljava/lang/String;Ljava/lang/String;)Lﹶﾞ/יי;

    move-result-object v3

    sget-object v5, Lﹶﾞ/ᵔᵢ;->ᴵᵔ:Lﹶﾞ/ᵔᵢ;

    sget-object v6, Lﹶﾞ/ᵔᵢ;->ٴᵢ:Lﹶﾞ/ᵔᵢ;

    if-eqz v3, :cond_12

    iget-object v3, v3, Lﹶﾞ/יי;->ⁱˊ:Ljava/lang/String;

    const-string v4, "tcf"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    sget-object v3, Lﹶﾞ/ᵔᵢ;->ˉٴ:Lﹶﾞ/ᵔᵢ;

    invoke-virtual {v2, v7, v3}, Lᐧﹳ/ʽ;->ˈٴ(Lﹶﾞ/ⁱˉ;Lﹶﾞ/ᵔᵢ;)V

    goto/16 :goto_a

    :cond_10
    const-string v4, "app"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {v2, v7, v6}, Lᐧﹳ/ʽ;->ˈٴ(Lﹶﾞ/ⁱˉ;Lﹶﾞ/ᵔᵢ;)V

    goto/16 :goto_a

    :cond_11
    invoke-virtual {v2, v7, v5}, Lᐧﹳ/ʽ;->ˈٴ(Lﹶﾞ/ⁱˉ;Lﹶﾞ/ᵔᵢ;)V

    goto/16 :goto_a

    :cond_12
    invoke-virtual/range {p1 .. p1}, Lﹶﾞ/ʿᵢ;->ـˆ()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_15

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ˆʻ;->ʻٴ()J

    move-result-wide v8

    const-wide/16 v10, 0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_15

    :cond_13
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_14

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ˆʻ;->ʻٴ()J

    move-result-wide v3

    const-wide/16 v8, 0x0

    cmp-long v3, v3, v8

    if-eqz v3, :cond_14

    goto :goto_9

    :cond_14
    invoke-virtual {v2, v7, v5}, Lᐧﹳ/ʽ;->ˈٴ(Lﹶﾞ/ⁱˉ;Lﹶﾞ/ᵔᵢ;)V

    goto :goto_a

    :cond_15
    :goto_9
    invoke-virtual {v2, v7, v6}, Lᐧﹳ/ʽ;->ˈٴ(Lﹶﾞ/ⁱˉ;Lﹶﾞ/ᵔᵢ;)V

    goto :goto_a

    :cond_16
    invoke-virtual/range {p1 .. p1}, Lﹶﾞ/ʿᵢ;->ˈٴ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lﹶﾞ/ᵢי;->ˈٴ(Ljava/lang/String;Lᐧﹳ/ʽ;)I

    move-result v3

    invoke-static {}, Lcom/google/android/gms/internal/measurement/ˆʻ;->ʾˋ()Lcom/google/android/gms/internal/measurement/ﾞˊ;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v6, v4, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v6, Lcom/google/android/gms/internal/measurement/ˆʻ;

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/measurement/ˆʻ;->ʽʽ(Ljava/lang/String;)V

    invoke-virtual {v0}, Lﹶﾞ/ᵢי;->ᵎˊ()Lᵎᴵ/ﹳٴ;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v7, v4, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v7, Lcom/google/android/gms/internal/measurement/ˆʻ;

    invoke-virtual {v7, v5, v6}, Lcom/google/android/gms/internal/measurement/ˆʻ;->ᴵˊ(J)V

    int-to-long v5, v3

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v7, v4, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v7, Lcom/google/android/gms/internal/measurement/ˆʻ;

    invoke-virtual {v7, v5, v6}, Lcom/google/android/gms/internal/measurement/ˆʻ;->ˊʻ(J)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/ˆʻ;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v5, v1, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v5, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ˏᵢ(Lcom/google/android/gms/internal/measurement/ˆʻ;)V

    invoke-virtual {v0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v4

    iget-object v4, v4, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "Setting user property"

    const-string v6, "non_personalized_ads(_npa)"

    invoke-virtual {v4, v6, v3, v5}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_a
    invoke-virtual {v2}, Lᐧﹳ/ʽ;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v3, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ˊˊ(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lﹶﾞ/ʿᵢ;->ˈٴ()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lﹶﾞ/ᵢי;->ʾˋ:Lﹶﾞ/ـﹶ;

    invoke-virtual {v3}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    invoke-virtual {v3, v2}, Lﹶﾞ/ـﹶ;->ﾞˋ(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lﹶﾞ/ـﹶ;->ˏⁱ(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ᐧˎ;

    move-result-object v2

    if-nez v2, :cond_17

    goto :goto_b

    :cond_17
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ᐧˎ;->יـ()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ᐧˎ;->ˏי()Z

    move-result v2

    if-eqz v2, :cond_18

    goto :goto_b

    :cond_18
    const/4 v13, 0x0

    goto :goto_c

    :cond_19
    :goto_b
    const/4 v13, 0x1

    :goto_c
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ʽʾ;->ʿ()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    :goto_d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_21

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/ٴʿ;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ٴʿ;->יـ()Ljava/lang/String;

    move-result-object v4

    const-string v5, "_tcf"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ٴʿ;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ʼˎ()Lcom/google/android/gms/internal/measurement/ﹳᴵ;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ᵔⁱ;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ˆʾ()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    :goto_e
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1f

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/ˊﾞ;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ˊﾞ;->ᵔﹳ()Ljava/lang/String;

    move-result-object v6

    const-string v7, "_tcfd"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/ˊﾞ;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ˊﾞ;->יـ()Ljava/lang/String;

    move-result-object v4

    if-eqz v13, :cond_1d

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v8, 0x4

    if-gt v6, v8, :cond_1a

    goto :goto_12

    :cond_1a
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    const/4 v13, 0x1

    :goto_f
    const/16 v6, 0x40

    const-string v9, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-_"

    if-ge v13, v6, :cond_1c

    aget-char v6, v4, v8

    invoke-virtual {v9, v13}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v6, v10, :cond_1b

    :goto_10
    const/16 v16, 0x1

    goto :goto_11

    :cond_1b
    add-int/lit8 v13, v13, 0x1

    goto :goto_f

    :cond_1c
    const/4 v13, 0x0

    goto :goto_10

    :goto_11
    or-int/lit8 v6, v13, 0x1

    invoke-virtual {v9, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput-char v6, v4, v8

    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    :cond_1d
    :goto_12
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ˊﾞ;->ᴵˊ()Lcom/google/android/gms/internal/measurement/ˊˊ;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/measurement/ˊˊ;->ˆʾ(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/measurement/ˊˊ;->ٴﹶ(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v4, v2, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v4, Lcom/google/android/gms/internal/measurement/ٴʿ;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/ˊﾞ;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/measurement/ٴʿ;->ʾˋ(ILcom/google/android/gms/internal/measurement/ˊﾞ;)V

    goto :goto_13

    :cond_1e
    const/16 v16, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_1f
    :goto_13
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/measurement/ʽʾ;->ᵎᵔ(ILcom/google/android/gms/internal/measurement/ᵔⁱ;)V

    return-void

    :cond_20
    const/16 v16, 0x1

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_d

    :cond_21
    return-void
.end method

.method public final ʼᐧ(Ljava/lang/String;)V
    .locals 11

    .prologue
    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v0

    invoke-virtual {v0}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ʻˋ()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lﹶﾞ/ᵢי;->ˈⁱ:Z

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lﹶﾞ/ᵢי;->ᵔי:Lﹶﾞ/ᵎʻ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lﹶﾞ/ᵎʻ;->ﾞʻ()Lﹶﾞ/ʿʽ;

    move-result-object v2

    iget-object v2, v2, Lﹶﾞ/ʿʽ;->ᴵᵔ:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v2, :cond_1

    :try_start_1
    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object p1

    iget-object p1, p1, Lﹶﾞ/ﹳـ;->ᵎⁱ:Lﹶﾞ/ʼˈ;

    const-string v0, "Upload data called on the client side before use of service was decided"

    invoke-virtual {p1, v0}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    move-object v6, p0

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v6, p0

    goto/16 :goto_4

    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object p1

    iget-object p1, p1, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v0, "Upload called in the client side when service should be used"

    invoke-virtual {p1, v0}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_2
    :try_start_4
    iget-wide v2, p0, Lﹶﾞ/ᵢי;->ˈʿ:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    :try_start_5
    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ˆﾞ()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :cond_3
    :try_start_6
    iget-object v2, p0, Lﹶﾞ/ᵢי;->ᴵˊ:Lﹶﾞ/ʿ;

    invoke-static {v2}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v2}, Lﹶﾞ/ʿ;->ـʻ()Z

    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-nez v2, :cond_4

    :try_start_7
    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object p1

    iget-object p1, p1, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v0, "Network not connected, ignoring upload request"

    invoke-virtual {p1, v0}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ˆﾞ()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    :cond_4
    :try_start_8
    iget-object v2, p0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v2}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v2, p1}, Lﹶﾞ/ˉʿ;->ﾞˋ(Ljava/lang/String;)Z

    move-result v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-nez v2, :cond_5

    :try_start_9
    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v0

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v2, "[sgtm] Upload queue has no batches for appId"

    invoke-virtual {v0, p1, v2}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_0

    :cond_5
    :try_start_a
    iget-object v2, p0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v2}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-static {p1}, Lٴﾞ/ʻٴ;->ʽ(Ljava/lang/String;)V

    invoke-virtual {v2}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    invoke-virtual {v2}, Lﹶﾞ/ˎᵎ;->ﹶˎ()V

    new-array v3, v0, [Lﹶﾞ/ˋـ;

    sget-object v4, Lﹶﾞ/ˋـ;->ʽʽ:Lﹶﾞ/ˋـ;

    aput-object v4, v3, v1

    invoke-static {v3}, Lﹶﾞ/ʽᐧ;->ﹳٴ([Lﹶﾞ/ˋـ;)Lﹶﾞ/ʽᐧ;

    move-result-object v3

    invoke-virtual {v2, p1, v3, v0}, Lﹶﾞ/ˉʿ;->יˉ(Ljava/lang/String;Lﹶﾞ/ʽᐧ;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    move-object v8, v4

    goto :goto_1

    :cond_6
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lﹶﾞ/ˑˉ;

    move-object v8, v2

    :goto_1
    if-eqz v8, :cond_0

    iget-object v2, v8, Lﹶﾞ/ˑˉ;->ⁱˊ:Lcom/google/android/gms/internal/measurement/ˊﹳ;

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v3

    iget-object v3, v3, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v5, "[sgtm] Uploading data from upload queue. appId, type, url"

    iget-object v6, v8, Lﹶﾞ/ˑˉ;->ˑﹳ:Lﹶﾞ/ˋـ;

    iget-object v7, v8, Lﹶﾞ/ˑˉ;->ʽ:Ljava/lang/String;

    invoke-virtual {v3, v5, p1, v6, v7}, Lﹶﾞ/ʼˈ;->ˈ(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ﾞי;->ﹳٴ()[B

    move-result-object v3

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v5

    invoke-virtual {v5}, Lﹶﾞ/ﹳـ;->ˎˉ()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eqz v5, :cond_7

    :try_start_b
    iget-object v5, p0, Lﹶﾞ/ᵢי;->ٴᵢ:Lﹶﾞ/ʿ;

    invoke-static {v5}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v5, v2}, Lﹶﾞ/ʿ;->ˆˎ(Lcom/google/android/gms/internal/measurement/ˊﹳ;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v6

    iget-object v6, v6, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v7, "[sgtm] Uploading data from upload queue. appId, uncompressed size, data"

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v7, p1, v3, v5}, Lﹶﾞ/ʼˈ;->ˈ(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_7
    :try_start_c
    new-instance v3, Lﹶﾞ/ʾˏ;

    iget-object v5, v8, Lﹶﾞ/ˑˉ;->ʽ:Ljava/lang/String;

    iget-object v6, v8, Lﹶﾞ/ˑˉ;->ˈ:Ljava/util/HashMap;

    iget-object v7, v8, Lﹶﾞ/ˑˉ;->ˑﹳ:Lﹶﾞ/ˋـ;

    invoke-direct {v3, v5, v6, v7, v4}, Lﹶﾞ/ʾˏ;-><init>(Ljava/lang/String;Ljava/util/Map;Lﹶﾞ/ˋـ;Lcom/google/android/gms/internal/measurement/ᵢᐧ;)V

    iput-boolean v0, p0, Lﹶﾞ/ᵢי;->ﹳـ:Z

    iget-object v0, p0, Lﹶﾞ/ᵢי;->ᴵˊ:Lﹶﾞ/ʿ;

    invoke-static {v0}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    new-instance v5, Lcom/parse/ٴʼ;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    const/16 v9, 0x19

    const/4 v10, 0x0

    move-object v6, p0

    move-object v7, p1

    :try_start_d
    invoke-direct/range {v5 .. v10}, Lcom/parse/ٴʼ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-virtual {v0, v7, v3, v2, v5}, Lﹶﾞ/ʿ;->ˎـ(Ljava/lang/String;Lﹶﾞ/ʾˏ;Lcom/google/android/gms/internal/measurement/ˊﹳ;Lﹶﾞ/ᴵˑ;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :goto_2
    move-object p1, v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v6, p0

    goto :goto_2

    :goto_3
    iput-boolean v1, v6, Lﹶﾞ/ᵢי;->ˈⁱ:Z

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵔٴ()V

    return-void

    :goto_4
    iput-boolean v1, v6, Lﹶﾞ/ᵢי;->ˈⁱ:Z

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵔٴ()V

    throw p1
.end method

.method public final ʽ(Ljava/lang/String;Lﹶﾞ/ˏי;)V
    .locals 41

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v1, p2

    iget-object v3, v0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v3}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v3, v2}, Lﹶﾞ/ˉʿ;->ᵢﹳ(Ljava/lang/String;)Lﹶﾞ/ʿᵢ;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v4, v3, Lﹶﾞ/ʿᵢ;->ﹳٴ:Lﹶﾞ/ᵎʻ;

    invoke-virtual {v3}, Lﹶﾞ/ʿᵢ;->ᵔٴ()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v0, v3}, Lﹶﾞ/ᵢי;->ˑٴ(Lﹶﾞ/ʿᵢ;)Ljava/lang/Boolean;

    move-result-object v5

    if-nez v5, :cond_1

    iget-object v5, v1, Lﹶﾞ/ˏי;->ʾˋ:Ljava/lang/String;

    const-string v6, "_ui"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v5

    iget-object v5, v5, Lﹶﾞ/ﹳـ;->ᵎⁱ:Lﹶﾞ/ʼˈ;

    invoke-static {v2}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v6

    const-string v7, "Could not find package. appId"

    invoke-virtual {v5, v6, v7}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v1

    iget-object v1, v1, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    invoke-static {v2}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v2

    const-string v3, "App version does not match; dropping event. appId"

    invoke-virtual {v1, v2, v3}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    new-instance v1, Lﹶﾞ/ʻᐧ;

    invoke-virtual {v3}, Lﹶﾞ/ʿᵢ;->ٴᵢ()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lﹶﾞ/ʿᵢ;->ᵔٴ()Ljava/lang/String;

    move-result-object v6

    move-object v7, v5

    move-object v8, v6

    invoke-virtual {v3}, Lﹶﾞ/ʿᵢ;->ˑٴ()J

    move-result-wide v5

    iget-object v9, v4, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v9}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    invoke-virtual {v9}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    move-object v9, v7

    iget-object v7, v3, Lﹶﾞ/ʿᵢ;->ﾞʻ:Ljava/lang/String;

    iget-object v10, v4, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v10}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    invoke-virtual {v10}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    move-object v11, v8

    move-object v10, v9

    iget-wide v8, v3, Lﹶﾞ/ʿᵢ;->ˉʿ:J

    iget-object v12, v4, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v12}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    invoke-virtual {v12}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    move-object v12, v10

    move-object v13, v11

    iget-wide v10, v3, Lﹶﾞ/ʿᵢ;->ᵔʾ:J

    iget-object v14, v4, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v14}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    invoke-virtual {v14}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    move-object v14, v13

    iget-boolean v13, v3, Lﹶﾞ/ʿᵢ;->ˉˆ:Z

    invoke-virtual {v3}, Lﹶﾞ/ʿᵢ;->ٴʼ()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v1

    iget-object v1, v4, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v1}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    invoke-virtual {v1}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    iget-boolean v1, v3, Lﹶﾞ/ʿᵢ;->ʼᐧ:Z

    invoke-virtual {v3}, Lﹶﾞ/ʿᵢ;->ـˆ()Ljava/lang/Boolean;

    move-result-object v21

    invoke-virtual {v3}, Lﹶﾞ/ʿᵢ;->ⁱˊ()J

    move-result-wide v22

    move/from16 v19, v1

    iget-object v1, v4, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v1}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    invoke-virtual {v1}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    iget-object v1, v3, Lﹶﾞ/ʿᵢ;->יـ:Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p1}, Lﹶﾞ/ᵢי;->ﹳٴ(Ljava/lang/String;)Lﹶﾞ/ᐧˎ;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lﹶﾞ/ᐧˎ;->ᵎﹶ()Ljava/lang/String;

    move-result-object v25

    invoke-virtual {v3}, Lﹶﾞ/ʿᵢ;->ʼʼ()Z

    move-result v28

    move-object/from16 v24, v1

    iget-object v1, v4, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v1}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    invoke-virtual {v1}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    iget-wide v1, v3, Lﹶﾞ/ʿᵢ;->ʻٴ:J

    move-wide/from16 v29, v1

    invoke-virtual/range {p0 .. p1}, Lﹶﾞ/ᵢי;->ﹳٴ(Ljava/lang/String;)Lﹶﾞ/ᐧˎ;

    move-result-object v1

    iget v1, v1, Lﹶﾞ/ᐧˎ;->ⁱˊ:I

    invoke-virtual/range {p0 .. p1}, Lﹶﾞ/ᵢי;->ᵎʻ(Ljava/lang/String;)Lﹶﾞ/ˉˆ;

    move-result-object v2

    iget-object v2, v2, Lﹶﾞ/ˉˆ;->ⁱˊ:Ljava/lang/String;

    move/from16 v31, v1

    iget-object v1, v4, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v1}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    invoke-virtual {v1}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    iget v1, v3, Lﹶﾞ/ʿᵢ;->ʾᵎ:I

    iget-object v4, v4, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v4}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    invoke-virtual {v4}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    move/from16 v33, v1

    move-object/from16 v32, v2

    iget-wide v1, v3, Lﹶﾞ/ʿᵢ;->ᴵˊ:J

    invoke-virtual {v3}, Lﹶﾞ/ʿᵢ;->ʽʽ()Ljava/lang/String;

    move-result-object v36

    invoke-virtual {v3}, Lﹶﾞ/ʿᵢ;->יـ()Ljava/lang/String;

    move-result-object v37

    invoke-virtual {v3}, Lﹶﾞ/ʿᵢ;->ˏי()I

    move-result v40

    const/16 v27, 0x0

    const-wide/16 v38, 0x0

    move-object v3, v12

    const/4 v12, 0x0

    move-object v4, v14

    const/4 v14, 0x0

    move-wide/from16 v34, v1

    move-object/from16 v1, v16

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const-string v26, ""

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v40}, Lﹶﾞ/ʻᐧ;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JIZZLjava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJILjava/lang/String;IJLjava/lang/String;Ljava/lang/String;JI)V

    move-object v2, v1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lﹶﾞ/ᵢי;->ˈ(Lﹶﾞ/ˏי;Lﹶﾞ/ʻᐧ;)V

    return-void

    :cond_3
    :goto_1
    invoke-virtual {v0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v1

    iget-object v1, v1, Lﹶﾞ/ﹳـ;->ˆﾞ:Lﹶﾞ/ʼˈ;

    const-string v3, "No app data available; dropping event"

    invoke-virtual {v1, v2, v3}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final ʽᵔ(Ljava/lang/String;Lﹶﾞ/ˉˆ;Lﹶﾞ/ᐧˎ;Lᐧﹳ/ʽ;)Lﹶﾞ/ˉˆ;
    .locals 11

    .prologue
    iget-object v0, p0, Lﹶﾞ/ᵢי;->ʾˋ:Lﹶﾞ/ـﹶ;

    invoke-static {v0}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v0, p1}, Lﹶﾞ/ـﹶ;->ˏⁱ(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ᐧˎ;

    move-result-object v1

    const-string v2, "-"

    const/16 v3, 0x5a

    sget-object v4, Lﹶﾞ/ʽⁱ;->ˈٴ:Lﹶﾞ/ʽⁱ;

    sget-object v5, Lﹶﾞ/ⁱˉ;->ˈٴ:Lﹶﾞ/ⁱˉ;

    if-nez v1, :cond_1

    invoke-virtual {p2}, Lﹶﾞ/ˉˆ;->ﹳٴ()Lﹶﾞ/ʽⁱ;

    move-result-object p1

    if-ne p1, v4, :cond_0

    iget v3, p2, Lﹶﾞ/ˉˆ;->ﹳٴ:I

    invoke-virtual {p4, v5, v3}, Lᐧﹳ/ʽ;->ʽʽ(Lﹶﾞ/ⁱˉ;I)V

    goto :goto_0

    :cond_0
    sget-object p1, Lﹶﾞ/ᵔᵢ;->ٴʼ:Lﹶﾞ/ᵔᵢ;

    invoke-virtual {p4, v5, p1}, Lᐧﹳ/ʽ;->ˈٴ(Lﹶﾞ/ⁱˉ;Lﹶﾞ/ᵔᵢ;)V

    :goto_0
    new-instance p1, Lﹶﾞ/ˉˆ;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p1, p2, v3, p3, v2}, Lﹶﾞ/ˉˆ;-><init>(Ljava/lang/Boolean;ILjava/lang/Boolean;Ljava/lang/String;)V

    return-object p1

    :cond_1
    invoke-virtual {p2}, Lﹶﾞ/ˉˆ;->ﹳٴ()Lﹶﾞ/ʽⁱ;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v7, 0x1

    sget-object v8, Lﹶﾞ/ʽⁱ;->ᴵᵔ:Lﹶﾞ/ʽⁱ;

    if-eq v1, v8, :cond_c

    if-ne v1, v4, :cond_2

    goto/16 :goto_5

    :cond_2
    sget-object p2, Lﹶﾞ/ʽⁱ;->ʽʽ:Lﹶﾞ/ʽⁱ;

    sget-object v9, Lﹶﾞ/ʽⁱ;->ᴵˊ:Lﹶﾞ/ʽⁱ;

    if-ne v1, p2, :cond_3

    invoke-virtual {v0, p1, v5}, Lﹶﾞ/ـﹶ;->ʼᵢ(Ljava/lang/String;Lﹶﾞ/ⁱˉ;)Lﹶﾞ/ʽⁱ;

    move-result-object p2

    if-eq p2, v9, :cond_3

    sget-object p3, Lﹶﾞ/ᵔᵢ;->ᵎⁱ:Lﹶﾞ/ᵔᵢ;

    invoke-virtual {p4, v5, p3}, Lᐧﹳ/ʽ;->ˈٴ(Lﹶﾞ/ⁱˉ;Lﹶﾞ/ᵔᵢ;)V

    move-object v1, p2

    goto/16 :goto_6

    :cond_3
    invoke-virtual {v0}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    invoke-virtual {v0, p1}, Lﹶﾞ/ـﹶ;->ﾞˋ(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lﹶﾞ/ـﹶ;->ˏⁱ(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ᐧˎ;

    move-result-object p2

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/ᐧˎ;->ᵔﹳ()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/ʾﾞ;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ʾﾞ;->ʼᐧ()I

    move-result v10

    invoke-static {v10}, Lﹶﾞ/ـﹶ;->ﹳᵢ(I)Lﹶﾞ/ⁱˉ;

    move-result-object v10

    if-ne v5, v10, :cond_5

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ʾﾞ;->ᵔﹳ()I

    move-result p2

    invoke-static {p2}, Lﹶﾞ/ـﹶ;->ﹳᵢ(I)Lﹶﾞ/ⁱˉ;

    move-result-object p2

    goto :goto_2

    :cond_6
    :goto_1
    const/4 p2, 0x0

    :goto_2
    iget-object p3, p3, Lﹶﾞ/ᐧˎ;->ﹳٴ:Ljava/util/EnumMap;

    sget-object v1, Lﹶﾞ/ⁱˉ;->ᴵˊ:Lﹶﾞ/ⁱˉ;

    invoke-virtual {p3, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lﹶﾞ/ʽⁱ;

    if-nez p3, :cond_7

    goto :goto_3

    :cond_7
    move-object v9, p3

    :goto_3
    if-eq v9, v8, :cond_8

    if-ne v9, v4, :cond_9

    :cond_8
    move p3, v7

    goto :goto_4

    :cond_9
    move p3, v6

    :goto_4
    if-ne p2, v1, :cond_a

    if-eqz p3, :cond_a

    sget-object p2, Lﹶﾞ/ᵔᵢ;->ˈٴ:Lﹶﾞ/ᵔᵢ;

    invoke-virtual {p4, v5, p2}, Lᐧﹳ/ʽ;->ˈٴ(Lﹶﾞ/ⁱˉ;Lﹶﾞ/ᵔᵢ;)V

    move-object v1, v9

    goto :goto_6

    :cond_a
    sget-object p2, Lﹶﾞ/ᵔᵢ;->ʽʽ:Lﹶﾞ/ᵔᵢ;

    invoke-virtual {p4, v5, p2}, Lᐧﹳ/ʽ;->ˈٴ(Lﹶﾞ/ⁱˉ;Lﹶﾞ/ᵔᵢ;)V

    invoke-virtual {v0, p1, v5}, Lﹶﾞ/ـﹶ;->ـʻ(Ljava/lang/String;Lﹶﾞ/ⁱˉ;)Z

    move-result p2

    if-eq v7, p2, :cond_b

    move-object v1, v4

    goto :goto_6

    :cond_b
    move-object v1, v8

    goto :goto_6

    :cond_c
    :goto_5
    iget v3, p2, Lﹶﾞ/ˉˆ;->ﹳٴ:I

    invoke-virtual {p4, v5, v3}, Lᐧﹳ/ʽ;->ʽʽ(Lﹶﾞ/ⁱˉ;I)V

    :goto_6
    invoke-virtual {v0}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    invoke-virtual {v0, p1}, Lﹶﾞ/ـﹶ;->ﾞˋ(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lﹶﾞ/ـﹶ;->ˏⁱ(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ᐧˎ;

    move-result-object p2

    if-nez p2, :cond_d

    goto :goto_7

    :cond_d
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/ᐧˎ;->יـ()Z

    move-result p3

    if-eqz p3, :cond_e

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/ᐧˎ;->ˏי()Z

    move-result p2

    if-eqz p2, :cond_f

    :cond_e
    :goto_7
    move v6, v7

    :cond_f
    invoke-static {v0}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v0}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    invoke-virtual {v0, p1}, Lﹶﾞ/ـﹶ;->ﾞˋ(Ljava/lang/String;)V

    new-instance p2, Ljava/util/TreeSet;

    invoke-direct {p2}, Ljava/util/TreeSet;-><init>()V

    invoke-virtual {v0, p1}, Lﹶﾞ/ـﹶ;->ˏⁱ(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ᐧˎ;

    move-result-object p1

    if-nez p1, :cond_10

    goto :goto_9

    :cond_10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ᐧˎ;->ﹳᐧ()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/measurement/ⁱˉ;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/ⁱˉ;->ʼᐧ()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_11
    :goto_9
    if-eq v1, v4, :cond_14

    invoke-virtual {p2}, Ljava/util/TreeSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_12

    goto :goto_a

    :cond_12
    new-instance p1, Lﹶﾞ/ˉˆ;

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    const-string v0, ""

    if-eqz v6, :cond_13

    invoke-static {v0, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    :cond_13
    invoke-direct {p1, p3, v3, p4, v0}, Lﹶﾞ/ˉˆ;-><init>(Ljava/lang/Boolean;ILjava/lang/Boolean;Ljava/lang/String;)V

    return-object p1

    :cond_14
    :goto_a
    new-instance p1, Lﹶﾞ/ˉˆ;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-direct {p1, p2, v3, p3, v2}, Lﹶﾞ/ˉˆ;-><init>(Ljava/lang/Boolean;ILjava/lang/Boolean;Ljava/lang/String;)V

    return-object p1
.end method

.method public final ʽﹳ(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/ˊˊ;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 10

    .prologue
    const-string v0, "_sc"

    const-string v1, "_si"

    const-string v2, "_o"

    const-string v3, "_sn"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v1, Lcom/google/android/gms/internal/measurement/ˊﾞ;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ˊﾞ;->ᵔﹳ()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lﹶﾞ/ᵢﹳ;->ᵢʻ(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x100

    const/16 v3, 0x64

    const/16 v4, 0x1f4

    if-nez v1, :cond_1

    invoke-static {p1}, Lﹶﾞ/ᵢﹳ;->ᵢʻ(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᴵʼ()Lﹶﾞ/ᵎﹶ;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lﹶﾞ/ᴵᵔ;->ˈˏ:Lﹶﾞ/ˈٴ;

    invoke-virtual {p1, p4, v1}, Lﹶﾞ/ᵎﹶ;->ˎʾ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)I

    move-result p1

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_0
    int-to-long v5, p1

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᴵʼ()Lﹶﾞ/ᵎﹶ;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lﹶﾞ/ᴵᵔ;->ˈˏ:Lﹶﾞ/ˈٴ;

    invoke-virtual {p1, p4, v1}, Lﹶﾞ/ᵎﹶ;->ˎʾ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)I

    move-result p1

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :goto_2
    iget-object p1, p2, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast p1, Lcom/google/android/gms/internal/measurement/ˊﾞ;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ˊﾞ;->יـ()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p2, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v1, Lcom/google/android/gms/internal/measurement/ˊﾞ;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ˊﾞ;->יـ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v7, 0x0

    invoke-virtual {p1, v7, v1}, Ljava/lang/String;->codePointCount(II)I

    move-result p1

    int-to-long v7, p1

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ﹳﹳ()Lﹶﾞ/ᵢﹳ;

    iget-object p1, p2, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast p1, Lcom/google/android/gms/internal/measurement/ˊﾞ;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ˊﾞ;->ᵔﹳ()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᴵʼ()Lﹶﾞ/ᵎﹶ;

    const/16 v1, 0x28

    const/4 v9, 0x1

    invoke-static {v1, p1, v9}, Lﹶﾞ/ᵢﹳ;->יˉ(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    cmp-long v1, v7, v5

    if-lez v1, :cond_4

    iget-object v1, p2, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v1, Lcom/google/android/gms/internal/measurement/ˊﾞ;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ˊﾞ;->ᵔﹳ()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p2, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ˊﾞ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ˊﾞ;->ᵔﹳ()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_ev"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ﹳﹳ()Lﹶﾞ/ᵢﹳ;

    iget-object p1, p2, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast p1, Lcom/google/android/gms/internal/measurement/ˊﾞ;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ˊﾞ;->יـ()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᴵʼ()Lﹶﾞ/ᵎﹶ;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lﹶﾞ/ᴵᵔ;->ˈˏ:Lﹶﾞ/ˈٴ;

    invoke-virtual {p2, p4, v0}, Lﹶﾞ/ᵎﹶ;->ˎʾ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)I

    move-result p2

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p2, p1, v9}, Lﹶﾞ/ᵢﹳ;->יˉ(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object p4

    iget-object p4, p4, Lﹶﾞ/ﹳـ;->ᵎˊ:Lﹶﾞ/ʼˈ;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "Param value is too long; discarded. Name, value length"

    invoke-virtual {p4, p1, v0, v2}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "_err"

    invoke-virtual {p3, p4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    const-wide/16 v2, 0x4

    invoke-virtual {p3, p4, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p3, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_3

    invoke-virtual {p3, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "_el"

    invoke-virtual {p3, p1, v7, v8}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_3
    iget-object p1, p2, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast p1, Lcom/google/android/gms/internal/measurement/ˊﾞ;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ˊﾞ;->ᵔﹳ()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public final ʾᵎ(Lﹶﾞ/ʿᵢ;)V
    .locals 13

    .prologue
    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v0

    invoke-virtual {v0}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    invoke-virtual {p1}, Lﹶﾞ/ʿᵢ;->ٴᵢ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lﹶﾞ/ʿᵢ;->ˈٴ()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v3, 0xcc

    const/4 v4, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lﹶﾞ/ᵢי;->ʼʼ(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void

    :cond_0
    move-object v1, p0

    invoke-virtual {p1}, Lﹶﾞ/ʿᵢ;->ˈٴ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v2

    iget-object v2, v2, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v3, "Fetching remote configuration"

    invoke-virtual {v2, v0, v3}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v1, Lﹶﾞ/ᵢי;->ʾˋ:Lﹶﾞ/ـﹶ;

    invoke-static {v2}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v2, v0}, Lﹶﾞ/ـﹶ;->ᵢˋ(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ﹳⁱ;

    move-result-object v3

    invoke-static {v2}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v2}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    iget-object v4, v2, Lﹶﾞ/ـﹶ;->ˆﾞ:Lיـ/ˑﹳ;

    invoke-virtual {v4, v0}, Lיـ/ﹳᐧ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    if-eqz v3, :cond_4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v6, 0x0

    if-nez v3, :cond_1

    new-instance v3, Lיـ/ˑﹳ;

    invoke-direct {v3, v6}, Lיـ/ﹳᐧ;-><init>(I)V

    const-string v7, "If-Modified-Since"

    invoke-virtual {v3, v7, v4}, Lיـ/ﹳᐧ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object v3, v5

    :goto_0
    invoke-static {v2}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v2}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    iget-object v2, v2, Lﹶﾞ/ـﹶ;->ᵔٴ:Lיـ/ˑﹳ;

    invoke-virtual {v2, v0}, Lיـ/ﹳᐧ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    if-nez v3, :cond_2

    new-instance v3, Lיـ/ˑﹳ;

    invoke-direct {v3, v6}, Lיـ/ﹳᐧ;-><init>(I)V

    :cond_2
    const-string v2, "If-None-Match"

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    move-object v11, v3

    goto :goto_1

    :cond_4
    move-object v11, v5

    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, v1, Lﹶﾞ/ᵢי;->ـˏ:Z

    iget-object v7, v1, Lﹶﾞ/ᵢי;->ᴵˊ:Lﹶﾞ/ʿ;

    invoke-static {v7}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    new-instance v12, Lⁱʽ/ﹳٴ;

    invoke-direct {v12, p0}, Lⁱʽ/ﹳٴ;-><init>(Ljava/lang/Object;)V

    iget-object v0, v7, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    invoke-virtual {v7}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    invoke-virtual {v7}, Lﹶﾞ/ˎᵎ;->ﹶˎ()V

    iget-object v2, v7, Lﹶﾞ/ˏʻ;->ᴵˊ:Lﹶﾞ/ᵢי;

    iget-object v2, v2, Lﹶﾞ/ᵢי;->ٴʼ:Lﹶﾞ/ᐧˏ;

    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {p1}, Lﹶﾞ/ʿᵢ;->ٴᵢ()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lﹶﾞ/ᴵᵔ;->ﾞᴵ:Lﹶﾞ/ˈٴ;

    invoke-virtual {v6, v5}, Lﹶﾞ/ˈٴ;->ﹳٴ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    sget-object v8, Lﹶﾞ/ᴵᵔ;->ᵎﹶ:Lﹶﾞ/ˈٴ;

    invoke-virtual {v8, v5}, Lﹶﾞ/ˈٴ;->ﹳٴ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "config/app/"

    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "platform"

    const-string v6, "android"

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    iget-object v2, v2, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v2, Lﹶﾞ/ᵎʻ;

    iget-object v2, v2, Lﹶﾞ/ᵎʻ;->ˈٴ:Lﹶﾞ/ᵎﹶ;

    invoke-virtual {v2}, Lﹶﾞ/ᵎﹶ;->יˉ()V

    const-wide/32 v5, 0x2078d

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v5, "gmp_version"

    invoke-virtual {v4, v5, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "runtime_version"

    const-string v5, "0"

    invoke-virtual {v2, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v9

    iget-object v3, v0, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v3}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    new-instance v6, Lﹶﾞ/ˉـ;

    invoke-virtual {p1}, Lﹶﾞ/ʿᵢ;->ˈٴ()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    invoke-direct/range {v6 .. v12}, Lﹶﾞ/ˉـ;-><init>(Lﹶﾞ/ʿ;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lﹶﾞ/ᴵˑ;)V

    invoke-virtual {v3, v6}, Lﹶﾞ/ʻˋ;->ᵢˋ(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    invoke-virtual {p1}, Lﹶﾞ/ʿᵢ;->ˈٴ()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object p1

    const-string v3, "Failed to parse config URL. Not fetching. appId"

    invoke-virtual {v0, p1, v2, v3}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final ʿ(Lﹶﾞ/ʻᐧ;)V
    .locals 34

    .prologue
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v3, v1, Lﹶﾞ/ᵢי;->ᵔי:Lﹶﾞ/ᵎʻ;

    const-string v4, "_sysu"

    const-string v5, "_sys"

    const-string v6, "_pfo"

    const-string v0, "com.android.vending"

    const-string v7, "_npa"

    const-string v8, "_uwa"

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v9

    invoke-virtual {v9}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ʻˋ()V

    invoke-static {v2}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iget-boolean v9, v2, Lﹶﾞ/ʻᐧ;->ˈʿ:Z

    iget-object v10, v2, Lﹶﾞ/ʻᐧ;->ʾˋ:Ljava/lang/String;

    invoke-static {v10}, Lٴﾞ/ʻٴ;->ʽ(Ljava/lang/String;)V

    invoke-static {v2}, Lﹶﾞ/ᵢי;->ـˏ(Lﹶﾞ/ʻᐧ;)Z

    move-result v11

    if-nez v11, :cond_0

    return-void

    :cond_0
    iget-object v11, v1, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v11}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v11, v10}, Lﹶﾞ/ˉʿ;->ᵢﹳ(Ljava/lang/String;)Lﹶﾞ/ʿᵢ;

    move-result-object v11

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    if-eqz v11, :cond_1

    invoke-virtual {v11}, Lﹶﾞ/ʿᵢ;->ٴᵢ()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_1

    iget-object v15, v2, Lﹶﾞ/ʻᐧ;->ᴵˊ:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_1

    invoke-virtual {v11, v13, v14}, Lﹶﾞ/ʿᵢ;->ﾞᴵ(J)V

    iget-object v15, v1, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v15}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v15, v11, v12}, Lﹶﾞ/ˉʿ;->ᐧⁱ(Lﹶﾞ/ʿᵢ;Z)V

    iget-object v11, v1, Lﹶﾞ/ᵢי;->ʾˋ:Lﹶﾞ/ـﹶ;

    invoke-static {v11}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v11}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    iget-object v11, v11, Lﹶﾞ/ـﹶ;->ˉٴ:Lיـ/ˑﹳ;

    invoke-virtual {v11, v10}, Lיـ/ﹳᐧ;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-boolean v11, v2, Lﹶﾞ/ʻᐧ;->ˉٴ:Z

    if-nez v11, :cond_2

    invoke-virtual/range {p0 .. p1}, Lﹶﾞ/ᵢי;->ᐧᴵ(Lﹶﾞ/ʻᐧ;)Lﹶﾞ/ʿᵢ;

    return-void

    :cond_2
    move-wide v15, v13

    iget-wide v13, v2, Lﹶﾞ/ʻᐧ;->ᵔי:J

    cmp-long v11, v13, v15

    if-nez v11, :cond_3

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎˊ()Lᵎᴵ/ﹳٴ;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    :cond_3
    move-wide/from16 v18, v13

    iget v11, v2, Lﹶﾞ/ʻᐧ;->ˆﾞ:I

    const/4 v13, 0x1

    if-eqz v11, :cond_4

    if-eq v11, v13, :cond_4

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v14

    iget-object v14, v14, Lﹶﾞ/ﹳـ;->ᵎⁱ:Lﹶﾞ/ʼˈ;

    invoke-static {v10}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v15

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "Incorrect app type, assuming installed app. appId, appType"

    invoke-virtual {v14, v15, v11, v12}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x0

    :cond_4
    iget-object v12, v1, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v12}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v12}, Lﹶﾞ/ˉʿ;->ˎʼ()V

    :try_start_0
    iget-object v12, v1, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v12}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v12, v10, v7}, Lﹶﾞ/ˉʿ;->ᐧˏ(Ljava/lang/String;Ljava/lang/String;)Lﹶﾞ/יי;

    move-result-object v12

    invoke-static {v2}, Lﹶﾞ/ᵢי;->ˈⁱ(Lﹶﾞ/ʻᐧ;)Ljava/lang/Boolean;

    move-result-object v14

    move-object v15, v14

    if-eqz v12, :cond_6

    const-wide/16 v29, 0x1

    const-string v13, "auto"

    iget-object v14, v12, Lﹶﾞ/יי;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    goto :goto_0

    :cond_5
    move-wide/from16 v14, v18

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_14

    :cond_6
    const-wide/16 v29, 0x1

    :goto_0
    if-eqz v15, :cond_9

    new-instance v17, Lﹶﾞ/ʿˎ;

    const-string v21, "_npa"

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const/4 v13, 0x1

    if-eq v13, v7, :cond_7

    const-wide/16 v15, 0x0

    goto :goto_1

    :cond_7
    move-wide/from16 v15, v29

    :goto_1
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    const-string v22, "auto"

    invoke-direct/range {v17 .. v22}, Lﹶﾞ/ʿˎ;-><init>(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v7, v17

    move-wide/from16 v14, v18

    if-eqz v12, :cond_8

    iget-object v12, v12, Lﹶﾞ/יי;->ˑﹳ:Ljava/lang/Object;

    iget-object v13, v7, Lﹶﾞ/ʿˎ;->ˈٴ:Ljava/lang/Long;

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    :cond_8
    invoke-virtual {v1, v7, v2}, Lﹶﾞ/ᵢי;->ᴵˑ(Lﹶﾞ/ʿˎ;Lﹶﾞ/ʻᐧ;)V

    goto :goto_2

    :cond_9
    move-wide/from16 v14, v18

    if-eqz v12, :cond_a

    invoke-virtual {v1, v7, v2}, Lﹶﾞ/ᵢי;->ˉـ(Ljava/lang/String;Lﹶﾞ/ʻᐧ;)V

    :cond_a
    :goto_2
    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᴵʼ()Lﹶﾞ/ᵎﹶ;

    move-result-object v7

    sget-object v12, Lﹶﾞ/ᴵᵔ;->ٴʿ:Lﹶﾞ/ˈٴ;

    const/4 v13, 0x0

    invoke-virtual {v7, v13, v12}, Lﹶﾞ/ᵎﹶ;->ˎˉ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)Z

    move-result v7

    if-eqz v7, :cond_b

    move-wide/from16 v18, v14

    iget-wide v13, v2, Lﹶﾞ/ʻᐧ;->ˏᵢ:J

    invoke-virtual {v1, v2, v13, v14}, Lﹶﾞ/ᵢי;->ᐧﾞ(Lﹶﾞ/ʻᐧ;J)V

    move-wide/from16 v14, v18

    goto :goto_3

    :cond_b
    invoke-virtual {v1, v2, v14, v15}, Lﹶﾞ/ᵢי;->ᐧﾞ(Lﹶﾞ/ʻᐧ;J)V

    :goto_3
    invoke-virtual/range {p0 .. p1}, Lﹶﾞ/ᵢי;->ᐧᴵ(Lﹶﾞ/ʻᐧ;)Lﹶﾞ/ʿᵢ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v12, "events"

    if-nez v11, :cond_c

    :try_start_1
    iget-object v11, v1, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v11}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    const-string v13, "_f"

    invoke-virtual {v11, v12, v10, v13}, Lﹶﾞ/ˉʿ;->ˆˑ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lﹶﾞ/ᵔﹳ;

    move-result-object v11

    const/4 v12, 0x0

    goto :goto_4

    :cond_c
    iget-object v11, v1, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v11}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    const-string v13, "_v"

    invoke-virtual {v11, v12, v10, v13}, Lﹶﾞ/ˉʿ;->ˆˑ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lﹶﾞ/ᵔﹳ;

    move-result-object v11

    const/4 v12, 0x1

    :goto_4
    if-nez v11, :cond_23

    const-wide/32 v16, 0x36ee80

    div-long v18, v14, v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-long v18, v18, v29

    mul-long v18, v18, v16

    const-string v11, "_elt"

    const-string v13, "_dac"

    const-string v7, "_et"

    move/from16 v31, v9

    const-string v9, "_r"

    move/from16 v16, v12

    const-string v12, "_c"

    if-nez v16, :cond_20

    :try_start_2
    new-instance v17, Lﹶﾞ/ʿˎ;

    const-string v21, "_fot"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    const-string v22, "auto"

    move-wide/from16 v18, v14

    invoke-direct/range {v17 .. v22}, Lﹶﾞ/ʿˎ;-><init>(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v14, v17

    invoke-virtual {v1, v14, v2}, Lﹶﾞ/ᵢי;->ᴵˑ(Lﹶﾞ/ʿˎ;Lﹶﾞ/ʻᐧ;)V

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v14

    invoke-virtual {v14}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    iget-object v14, v1, Lﹶﾞ/ᵢי;->ᵎˊ:Lﹶﾞ/ᴵʼ;

    invoke-static {v14}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v15, v14, Lﹶﾞ/ᴵʼ;->ⁱˊ:Lﹶﾞ/ᵎʻ;

    if-eqz v10, :cond_d

    :try_start_3
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_e

    :cond_d
    move-object/from16 v33, v3

    move-object/from16 v32, v11

    const/4 v2, 0x1

    goto/16 :goto_8

    :cond_e
    move-object/from16 v32, v11

    iget-object v11, v15, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    move-object/from16 v16, v11

    iget-object v11, v15, Lﹶﾞ/ᵎʻ;->ʾˋ:Landroid/content/Context;

    move-object/from16 v21, v11

    iget-object v11, v15, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static/range {v16 .. v16}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    invoke-virtual/range {v16 .. v16}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    invoke-virtual {v14}, Lﹶﾞ/ᴵʼ;->ﹳٴ()Z

    move-result v16

    if-nez v16, :cond_10

    invoke-static {v11}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v11, Lﹶﾞ/ﹳـ;->ᵔי:Lﹶﾞ/ʼˈ;

    const-string v11, "Install Referrer Reporter is not available"

    invoke-virtual {v0, v11}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    move-object/from16 v33, v3

    :cond_f
    :goto_5
    const/4 v2, 0x1

    goto/16 :goto_9

    :cond_10
    new-instance v2, Lﹶﾞ/ˏᵢ;

    invoke-direct {v2, v14, v10}, Lﹶﾞ/ˏᵢ;-><init>(Lﹶﾞ/ᴵʼ;Ljava/lang/String;)V

    move-object/from16 v24, v2

    iget-object v2, v15, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    invoke-virtual {v2}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    new-instance v2, Landroid/content/Intent;

    move-object/from16 v16, v14

    const-string v14, "com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE"

    invoke-direct {v2, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v14, Landroid/content/ComponentName;

    move-object/from16 v33, v3

    const-string v3, "com.google.android.finsky.externalreferrer.GetInstallReferrerService"

    invoke-direct {v14, v0, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-nez v3, :cond_11

    invoke-static {v11}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v11, Lﹶﾞ/ﹳـ;->ٴʼ:Lﹶﾞ/ʼˈ;

    const-string v2, "Failed to obtain Package Manager to verify binding conditions for Install Referrer"

    invoke-virtual {v0, v2}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    goto :goto_5

    :cond_11
    const/4 v14, 0x0

    invoke-virtual {v3, v2, v14}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_14

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_14

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v3, :cond_f

    iget-object v14, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    if-eqz v3, :cond_13

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual/range {v16 .. v16}, Lﹶﾞ/ᴵʼ;->ﹳٴ()Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lˑʻ/ﹳٴ;->ﹳٴ()Lˑʻ/ﹳٴ;

    move-result-object v20

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v22
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/16 v26, 0x0

    move-object/from16 v23, v0

    const/16 v25, 0x1

    :try_start_5
    invoke-virtual/range {v20 .. v26}, Lˑʻ/ﹳٴ;->ʽ(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;ILjava/util/concurrent/Executor;)Z

    move-result v0
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move/from16 v2, v25

    :try_start_6
    invoke-static {v11}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v3, v11, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v11, "Install Referrer Service is"

    if-eqz v0, :cond_12

    const-string v0, "available"

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_7

    :cond_12
    const-string v0, "not available"

    :goto_6
    invoke-virtual {v3, v0, v11}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_9

    :catch_1
    move-exception v0

    move/from16 v2, v25

    goto :goto_7

    :catch_2
    move-exception v0

    const/4 v2, 0x1

    :goto_7
    :try_start_7
    iget-object v3, v15, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v3}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v3, v3, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v11, "Exception occurred while binding to Install Referrer Service"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v11}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_9

    :cond_13
    const/4 v2, 0x1

    invoke-static {v11}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v11, Lﹶﾞ/ﹳـ;->ᵎⁱ:Lﹶﾞ/ʼˈ;

    const-string v3, "Play Store version 8.3.73 or higher required for Install Referrer"

    invoke-virtual {v0, v3}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    goto :goto_9

    :cond_14
    const/4 v2, 0x1

    invoke-static {v11}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v11, Lﹶﾞ/ﹳـ;->ᵔי:Lﹶﾞ/ʼˈ;

    const-string v3, "Play Service for fetching Install Referrer is unavailable on device"

    invoke-virtual {v0, v3}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    goto :goto_9

    :goto_8
    iget-object v0, v15, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ٴʼ:Lﹶﾞ/ʼˈ;

    const-string v3, "Install Referrer Reporter was called with invalid app package name"

    invoke-virtual {v0, v3}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    :goto_9
    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v0

    invoke-virtual {v0}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ʻˋ()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-wide/from16 v14, v29

    invoke-virtual {v3, v12, v14, v15}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v3, v9, v14, v15}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-wide/16 v11, 0x0

    invoke-virtual {v3, v8, v11, v12}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v3, v6, v11, v12}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v3, v5, v11, v12}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v3, v4, v11, v12}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    move-wide v11, v14

    invoke-virtual {v3, v7, v11, v12}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    if-eqz v31, :cond_15

    invoke-virtual {v3, v13, v11, v12}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_15
    invoke-static {v10}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iget-object v0, v1, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v0}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-static {v10}, Lٴﾞ/ʻٴ;->ʽ(Ljava/lang/String;)V

    invoke-virtual {v0}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    invoke-virtual {v0}, Lﹶﾞ/ˎᵎ;->ﹶˎ()V

    invoke-virtual {v0, v10}, Lﹶﾞ/ˉʿ;->ﹶʽ(Ljava/lang/String;)J

    move-result-wide v27

    move-object/from16 v9, v33

    iget-object v0, v9, Lﹶﾞ/ᵎʻ;->ʾˋ:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_17

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v0

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v2, "PackageManager is null, first open report might be inaccurate. appId"

    invoke-static {v10}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object/from16 v8, p1

    :cond_16
    :goto_a
    move-wide/from16 v4, v27

    const-wide/16 v15, 0x0

    goto/16 :goto_12

    :cond_17
    :try_start_8
    iget-object v0, v9, Lﹶﾞ/ᵎʻ;->ʾˋ:Landroid/content/Context;

    invoke-static {v0}, Lˑˊ/ʽ;->ﹳٴ(Landroid/content/Context;)Lˑˊ/ⁱˊ;

    move-result-object v0

    const/4 v14, 0x0

    invoke-virtual {v0, v14, v10}, Lˑˊ/ⁱˊ;->ﹳٴ(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v7
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_b

    :catch_3
    move-exception v0

    :try_start_9
    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v7

    iget-object v7, v7, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v11, "Package info is null, first open report might be inaccurate. appId"

    invoke-static {v10}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v12

    invoke-virtual {v7, v12, v0, v11}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    :goto_b
    if-eqz v7, :cond_1c

    iget-wide v11, v7, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-wide/16 v15, 0x0

    cmp-long v0, v11, v15

    if-eqz v0, :cond_1c

    iget-wide v13, v7, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v0, v11, v13

    if-eqz v0, :cond_1a

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᴵʼ()Lﹶﾞ/ᵎﹶ;

    move-result-object v0

    sget-object v7, Lﹶﾞ/ᴵᵔ;->ﹶ:Lﹶﾞ/ˈٴ;

    const/4 v11, 0x0

    invoke-virtual {v0, v11, v7}, Lﹶﾞ/ᵎﹶ;->ˎˉ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-wide/16 v15, 0x0

    cmp-long v0, v27, v15

    if-nez v0, :cond_18

    const-wide/16 v11, 0x1

    invoke-virtual {v3, v8, v11, v12}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const/4 v13, 0x0

    const-wide/16 v27, 0x0

    goto :goto_d

    :cond_18
    :goto_c
    const/4 v13, 0x0

    goto :goto_d

    :cond_19
    const-wide/16 v11, 0x1

    invoke-virtual {v3, v8, v11, v12}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_c

    :cond_1a
    move v13, v2

    :goto_d
    new-instance v17, Lﹶﾞ/ʿˎ;

    const-string v21, "_fi"

    if-eq v2, v13, :cond_1b

    const-wide/16 v11, 0x0

    goto :goto_e

    :cond_1b
    const-wide/16 v11, 0x1

    :goto_e
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    const-string v22, "auto"

    invoke-direct/range {v17 .. v22}, Lﹶﾞ/ʿˎ;-><init>(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v8, p1

    invoke-virtual {v1, v0, v8}, Lﹶﾞ/ᵢי;->ᴵˑ(Lﹶﾞ/ʿˎ;Lﹶﾞ/ʻᐧ;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_f

    :cond_1c
    move-object/from16 v8, p1

    :goto_f
    :try_start_a
    iget-object v0, v9, Lﹶﾞ/ᵎʻ;->ʾˋ:Landroid/content/Context;

    invoke-static {v0}, Lˑˊ/ʽ;->ﹳٴ(Landroid/content/Context;)Lˑˊ/ⁱˊ;

    move-result-object v0

    iget-object v0, v0, Lˑˊ/ⁱˊ;->ﹳٴ:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v14, 0x0

    invoke-virtual {v0, v10, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_10

    :catch_4
    move-exception v0

    :try_start_b
    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v9

    iget-object v9, v9, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v11, "Application info is null, first open report might be inaccurate. appId"

    invoke-static {v10}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v10

    invoke-virtual {v9, v10, v0, v11}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_10
    if-eqz v0, :cond_16

    iget v9, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v2, v9

    if-eqz v2, :cond_1d

    const-wide/16 v11, 0x1

    invoke-virtual {v3, v5, v11, v12}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_11

    :cond_1d
    const-wide/16 v11, 0x1

    :goto_11
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_16

    invoke-virtual {v3, v4, v11, v12}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_a

    :goto_12
    cmp-long v0, v4, v15

    if-ltz v0, :cond_1e

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_1e
    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᴵʼ()Lﹶﾞ/ᵎﹶ;

    move-result-object v0

    sget-object v2, Lﹶﾞ/ᴵᵔ;->ˆˑ:Lﹶﾞ/ˈٴ;

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v2}, Lﹶﾞ/ᵎﹶ;->ˎˉ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎˊ()Lᵎᴵ/ﹳٴ;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v2, v32

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_1f
    new-instance v17, Lﹶﾞ/ˏי;

    move-wide/from16 v21, v18

    const-string v18, "_f"

    new-instance v0, Lﹶﾞ/יـ;

    invoke-direct {v0, v3}, Lﹶﾞ/יـ;-><init>(Landroid/os/Bundle;)V

    const-string v20, "auto"

    move-object/from16 v19, v0

    invoke-direct/range {v17 .. v22}, Lﹶﾞ/ˏי;-><init>(Ljava/lang/String;Lﹶﾞ/יـ;Ljava/lang/String;J)V

    move-object/from16 v0, v17

    invoke-virtual {v1, v0, v8}, Lﹶﾞ/ᵢי;->ˈ(Lﹶﾞ/ˏי;Lﹶﾞ/ʻᐧ;)V

    goto/16 :goto_13

    :cond_20
    move-object v8, v2

    move-object v2, v11

    move-wide/from16 v21, v14

    new-instance v17, Lﹶﾞ/ʿˎ;

    const-string v21, "_fvt"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    const-string v22, "auto"

    move-wide/from16 v18, v14

    invoke-direct/range {v17 .. v22}, Lﹶﾞ/ʿˎ;-><init>(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v1, v0, v8}, Lﹶﾞ/ᵢי;->ᴵˑ(Lﹶﾞ/ʿˎ;Lﹶﾞ/ʻᐧ;)V

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v0

    invoke-virtual {v0}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ʻˋ()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v14, 0x1

    invoke-virtual {v0, v12, v14, v15}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0, v9, v14, v15}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0, v7, v14, v15}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    if-eqz v31, :cond_21

    invoke-virtual {v0, v13, v14, v15}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_21
    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᴵʼ()Lﹶﾞ/ᵎﹶ;

    move-result-object v3

    sget-object v4, Lﹶﾞ/ᴵᵔ;->ˆˑ:Lﹶﾞ/ˈٴ;

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v4}, Lﹶﾞ/ᵎﹶ;->ˎˉ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎˊ()Lᵎᴵ/ﹳٴ;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_22
    new-instance v17, Lﹶﾞ/ˏי;

    move-wide/from16 v21, v18

    const-string v18, "_v"

    new-instance v2, Lﹶﾞ/יـ;

    invoke-direct {v2, v0}, Lﹶﾞ/יـ;-><init>(Landroid/os/Bundle;)V

    const-string v20, "auto"

    move-object/from16 v19, v2

    invoke-direct/range {v17 .. v22}, Lﹶﾞ/ˏי;-><init>(Ljava/lang/String;Lﹶﾞ/יـ;Ljava/lang/String;J)V

    move-object/from16 v0, v17

    invoke-virtual {v1, v0, v8}, Lﹶﾞ/ᵢי;->ˈ(Lﹶﾞ/ˏי;Lﹶﾞ/ʻᐧ;)V

    goto :goto_13

    :cond_23
    move-object v8, v2

    move-wide/from16 v18, v14

    iget-boolean v0, v8, Lﹶﾞ/ʻᐧ;->ᵎⁱ:Z

    if-eqz v0, :cond_24

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v17, Lﹶﾞ/ˏי;

    move-wide/from16 v21, v18

    const-string v18, "_cd"

    new-instance v2, Lﹶﾞ/יـ;

    invoke-direct {v2, v0}, Lﹶﾞ/יـ;-><init>(Landroid/os/Bundle;)V

    const-string v20, "auto"

    move-object/from16 v19, v2

    invoke-direct/range {v17 .. v22}, Lﹶﾞ/ˏי;-><init>(Ljava/lang/String;Lﹶﾞ/יـ;Ljava/lang/String;J)V

    move-object/from16 v0, v17

    invoke-virtual {v1, v0, v8}, Lﹶﾞ/ᵢי;->ˈ(Lﹶﾞ/ˏי;Lﹶﾞ/ʻᐧ;)V

    :cond_24
    :goto_13
    iget-object v0, v1, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v0}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v0}, Lﹶﾞ/ˉʿ;->ʻˆ()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    iget-object v0, v1, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v0}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v0}, Lﹶﾞ/ˉʿ;->ˏʻ()V

    return-void

    :goto_14
    iget-object v2, v1, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v2}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v2}, Lﹶﾞ/ˉʿ;->ˏʻ()V

    throw v0
.end method

.method public final ʿᵢ(Lﹶﾞ/ˑﹳ;Lﹶﾞ/ʻᐧ;)V
    .locals 11

    .prologue
    iget-object v0, p1, Lﹶﾞ/ˑﹳ;->ʾˋ:Ljava/lang/String;

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ʽ(Ljava/lang/String;)V

    iget-object v0, p1, Lﹶﾞ/ˑﹳ;->ᴵˊ:Ljava/lang/String;

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iget-object v0, p1, Lﹶﾞ/ˑﹳ;->ʽʽ:Lﹶﾞ/ʿˎ;

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iget-object v0, p1, Lﹶﾞ/ˑﹳ;->ʽʽ:Lﹶﾞ/ʿˎ;

    iget-object v0, v0, Lﹶﾞ/ʿˎ;->ᴵˊ:Ljava/lang/String;

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ʽ(Ljava/lang/String;)V

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v0

    invoke-virtual {v0}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ʻˋ()V

    invoke-static {p2}, Lﹶﾞ/ᵢי;->ـˏ(Lﹶﾞ/ʻᐧ;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p2, Lﹶﾞ/ʻᐧ;->ˉٴ:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p2}, Lﹶﾞ/ᵢי;->ᐧᴵ(Lﹶﾞ/ʻᐧ;)Lﹶﾞ/ʿᵢ;

    return-void

    :cond_1
    new-instance v0, Lﹶﾞ/ˑﹳ;

    invoke-direct {v0, p1}, Lﹶﾞ/ˑﹳ;-><init>(Lﹶﾞ/ˑﹳ;)V

    const/4 p1, 0x0

    iput-boolean p1, v0, Lﹶﾞ/ˑﹳ;->ᴵᵔ:Z

    iget-object v1, p0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v1}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v1}, Lﹶﾞ/ˉʿ;->ˎʼ()V

    :try_start_0
    iget-object v1, p0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v1}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    iget-object v2, v0, Lﹶﾞ/ˑﹳ;->ʾˋ:Ljava/lang/String;

    invoke-static {v2}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iget-object v3, v0, Lﹶﾞ/ˑﹳ;->ʽʽ:Lﹶﾞ/ʿˎ;

    iget-object v3, v3, Lﹶﾞ/ʿˎ;->ᴵˊ:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lﹶﾞ/ˉʿ;->ˑˉ(Ljava/lang/String;Ljava/lang/String;)Lﹶﾞ/ˑﹳ;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lﹶﾞ/ᵢי;->ᵔי:Lﹶﾞ/ᵎʻ;

    if-eqz v1, :cond_2

    :try_start_1
    iget-object v3, v1, Lﹶﾞ/ˑﹳ;->ᴵˊ:Ljava/lang/String;

    iget-object v4, v0, Lﹶﾞ/ˑﹳ;->ᴵˊ:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v3

    iget-object v3, v3, Lﹶﾞ/ﹳـ;->ᵎⁱ:Lﹶﾞ/ʼˈ;

    const-string v4, "Updating a conditional user property with different origin. name, origin, origin (from DB)"

    iget-object v5, v2, Lﹶﾞ/ᵎʻ;->ٴʼ:Lﹶﾞ/ˑٴ;

    iget-object v6, v0, Lﹶﾞ/ˑﹳ;->ʽʽ:Lﹶﾞ/ʿˎ;

    iget-object v6, v6, Lﹶﾞ/ʿˎ;->ᴵˊ:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lﹶﾞ/ˑٴ;->ʽ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lﹶﾞ/ˑﹳ;->ᴵˊ:Ljava/lang/String;

    iget-object v7, v1, Lﹶﾞ/ˑﹳ;->ᴵˊ:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6, v7}, Lﹶﾞ/ʼˈ;->ˈ(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_4

    :cond_2
    :goto_0
    const/4 v3, 0x1

    if-eqz v1, :cond_3

    iget-boolean v4, v1, Lﹶﾞ/ˑﹳ;->ᴵᵔ:Z

    if-eqz v4, :cond_3

    iget-object v4, v1, Lﹶﾞ/ˑﹳ;->ᴵˊ:Ljava/lang/String;

    iput-object v4, v0, Lﹶﾞ/ˑﹳ;->ᴵˊ:Ljava/lang/String;

    iget-wide v4, v1, Lﹶﾞ/ˑﹳ;->ˈٴ:J

    iput-wide v4, v0, Lﹶﾞ/ˑﹳ;->ˈٴ:J

    iget-wide v4, v1, Lﹶﾞ/ˑﹳ;->ˉٴ:J

    iput-wide v4, v0, Lﹶﾞ/ˑﹳ;->ˉٴ:J

    iget-object v4, v1, Lﹶﾞ/ˑﹳ;->ˊʻ:Ljava/lang/String;

    iput-object v4, v0, Lﹶﾞ/ˑﹳ;->ˊʻ:Ljava/lang/String;

    iget-object v4, v1, Lﹶﾞ/ˑﹳ;->ᵎⁱ:Lﹶﾞ/ˏי;

    iput-object v4, v0, Lﹶﾞ/ˑﹳ;->ᵎⁱ:Lﹶﾞ/ˏי;

    iput-boolean v3, v0, Lﹶﾞ/ˑﹳ;->ᴵᵔ:Z

    new-instance v5, Lﹶﾞ/ʿˎ;

    iget-object v3, v0, Lﹶﾞ/ˑﹳ;->ʽʽ:Lﹶﾞ/ʿˎ;

    iget-object v9, v3, Lﹶﾞ/ʿˎ;->ᴵˊ:Ljava/lang/String;

    iget-object v4, v1, Lﹶﾞ/ˑﹳ;->ʽʽ:Lﹶﾞ/ʿˎ;

    iget-wide v6, v4, Lﹶﾞ/ʿˎ;->ʽʽ:J

    invoke-virtual {v3}, Lﹶﾞ/ʿˎ;->ﹳٴ()Ljava/lang/Object;

    move-result-object v8

    iget-object v1, v1, Lﹶﾞ/ˑﹳ;->ʽʽ:Lﹶﾞ/ʿˎ;

    iget-object v10, v1, Lﹶﾞ/ʿˎ;->ˊʻ:Ljava/lang/String;

    invoke-direct/range {v5 .. v10}, Lﹶﾞ/ʿˎ;-><init>(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, v0, Lﹶﾞ/ˑﹳ;->ʽʽ:Lﹶﾞ/ʿˎ;

    goto :goto_1

    :cond_3
    iget-object v1, v0, Lﹶﾞ/ˑﹳ;->ˊʻ:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v4, Lﹶﾞ/ʿˎ;

    iget-object p1, v0, Lﹶﾞ/ˑﹳ;->ʽʽ:Lﹶﾞ/ʿˎ;

    iget-object v8, p1, Lﹶﾞ/ʿˎ;->ᴵˊ:Ljava/lang/String;

    iget-wide v5, v0, Lﹶﾞ/ˑﹳ;->ˈٴ:J

    invoke-virtual {p1}, Lﹶﾞ/ʿˎ;->ﹳٴ()Ljava/lang/Object;

    move-result-object v7

    iget-object p1, v0, Lﹶﾞ/ˑﹳ;->ʽʽ:Lﹶﾞ/ʿˎ;

    iget-object v9, p1, Lﹶﾞ/ʿˎ;->ˊʻ:Ljava/lang/String;

    invoke-direct/range {v4 .. v9}, Lﹶﾞ/ʿˎ;-><init>(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, v0, Lﹶﾞ/ˑﹳ;->ʽʽ:Lﹶﾞ/ʿˎ;

    iput-boolean v3, v0, Lﹶﾞ/ˑﹳ;->ᴵᵔ:Z

    move p1, v3

    :cond_4
    :goto_1
    iget-boolean v1, v0, Lﹶﾞ/ˑﹳ;->ᴵᵔ:Z

    if-eqz v1, :cond_6

    iget-object v1, v0, Lﹶﾞ/ˑﹳ;->ʽʽ:Lﹶﾞ/ʿˎ;

    new-instance v3, Lﹶﾞ/יי;

    iget-object v4, v0, Lﹶﾞ/ˑﹳ;->ʾˋ:Ljava/lang/String;

    invoke-static {v4}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iget-object v5, v0, Lﹶﾞ/ˑﹳ;->ᴵˊ:Ljava/lang/String;

    iget-object v6, v1, Lﹶﾞ/ʿˎ;->ᴵˊ:Ljava/lang/String;

    iget-wide v7, v1, Lﹶﾞ/ʿˎ;->ʽʽ:J

    invoke-virtual {v1}, Lﹶﾞ/ʿˎ;->ﹳٴ()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    invoke-direct/range {v3 .. v9}, Lﹶﾞ/יי;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    iget-object v1, v3, Lﹶﾞ/יי;->ˑﹳ:Ljava/lang/Object;

    iget-object v4, v3, Lﹶﾞ/יי;->ʽ:Ljava/lang/String;

    iget-object v5, p0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v5}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v5, v3}, Lﹶﾞ/ˉʿ;->ʾˏ(Lﹶﾞ/יי;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v3

    iget-object v3, v3, Lﹶﾞ/ﹳـ;->ˆﾞ:Lﹶﾞ/ʼˈ;

    const-string v5, "User property updated immediately"

    iget-object v6, v0, Lﹶﾞ/ˑﹳ;->ʾˋ:Ljava/lang/String;

    iget-object v7, v2, Lﹶﾞ/ᵎʻ;->ٴʼ:Lﹶﾞ/ˑٴ;

    invoke-virtual {v7, v4}, Lﹶﾞ/ˑٴ;->ʽ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v6, v4, v1}, Lﹶﾞ/ʼˈ;->ˈ(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v3

    iget-object v3, v3, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v5, "(2)Too many active user properties, ignoring"

    iget-object v6, v0, Lﹶﾞ/ˑﹳ;->ʾˋ:Ljava/lang/String;

    invoke-static {v6}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v6

    iget-object v7, v2, Lﹶﾞ/ᵎʻ;->ٴʼ:Lﹶﾞ/ˑٴ;

    invoke-virtual {v7, v4}, Lﹶﾞ/ˑٴ;->ʽ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v6, v4, v1}, Lﹶﾞ/ʼˈ;->ˈ(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    if-eqz p1, :cond_6

    iget-object p1, v0, Lﹶﾞ/ˑﹳ;->ᵎⁱ:Lﹶﾞ/ˏי;

    if-eqz p1, :cond_6

    new-instance v1, Lﹶﾞ/ˏי;

    iget-wide v3, v0, Lﹶﾞ/ˑﹳ;->ˈٴ:J

    invoke-direct {v1, p1, v3, v4}, Lﹶﾞ/ˏי;-><init>(Lﹶﾞ/ˏי;J)V

    invoke-virtual {p0, v1, p2}, Lﹶﾞ/ᵢי;->ᵔᵢ(Lﹶﾞ/ˏי;Lﹶﾞ/ʻᐧ;)V

    :cond_6
    iget-object p1, p0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {p1}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {p1, v0}, Lﹶﾞ/ˉʿ;->ᵢי(Lﹶﾞ/ˑﹳ;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object p1

    iget-object p1, p1, Lﹶﾞ/ﹳـ;->ˆﾞ:Lﹶﾞ/ʼˈ;

    const-string p2, "Conditional property added"

    iget-object v1, v0, Lﹶﾞ/ˑﹳ;->ʾˋ:Ljava/lang/String;

    iget-object v2, v2, Lﹶﾞ/ᵎʻ;->ٴʼ:Lﹶﾞ/ˑٴ;

    iget-object v3, v0, Lﹶﾞ/ˑﹳ;->ʽʽ:Lﹶﾞ/ʿˎ;

    iget-object v3, v3, Lﹶﾞ/ʿˎ;->ᴵˊ:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lﹶﾞ/ˑٴ;->ʽ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lﹶﾞ/ˑﹳ;->ʽʽ:Lﹶﾞ/ʿˎ;

    invoke-virtual {v0}, Lﹶﾞ/ʿˎ;->ﹳٴ()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2, v1, v2, v0}, Lﹶﾞ/ʼˈ;->ˈ(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object p1

    iget-object p1, p1, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string p2, "Too many conditional properties, ignoring"

    iget-object v1, v0, Lﹶﾞ/ˑﹳ;->ʾˋ:Ljava/lang/String;

    invoke-static {v1}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v1

    iget-object v2, v2, Lﹶﾞ/ᵎʻ;->ٴʼ:Lﹶﾞ/ˑٴ;

    iget-object v3, v0, Lﹶﾞ/ˑﹳ;->ʽʽ:Lﹶﾞ/ʿˎ;

    iget-object v3, v3, Lﹶﾞ/ʿˎ;->ᴵˊ:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lﹶﾞ/ˑٴ;->ʽ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lﹶﾞ/ˑﹳ;->ʽʽ:Lﹶﾞ/ʿˎ;

    invoke-virtual {v0}, Lﹶﾞ/ʿˎ;->ﹳٴ()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2, v1, v2, v0}, Lﹶﾞ/ʼˈ;->ˈ(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3
    iget-object p1, p0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {p1}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {p1}, Lﹶﾞ/ˉʿ;->ʻˆ()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {p1}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {p1}, Lﹶﾞ/ˉʿ;->ˏʻ()V

    return-void

    :goto_4
    iget-object p2, p0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {p2}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {p2}, Lﹶﾞ/ˉʿ;->ˏʻ()V

    throw p1
.end method

.method public final ˆʾ(Lﹶﾞ/ʿᵢ;Lcom/google/android/gms/internal/measurement/ʽʾ;)V
    .locals 16

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v2

    invoke-virtual {v2}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    invoke-virtual {v0}, Lﹶﾞ/ᵢי;->ʻˋ()V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/ˋˊ;->ˈʿ()Lcom/google/android/gms/internal/measurement/ⁱᴵ;

    move-result-object v2

    iget-object v3, v1, Lﹶﾞ/ʿᵢ;->ﹳٴ:Lﹶﾞ/ᵎʻ;

    iget-object v4, v3, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v4}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    invoke-virtual {v4}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    iget-object v4, v1, Lﹶﾞ/ʿᵢ;->ˉٴ:[B

    if-eqz v4, :cond_0

    :try_start_0
    invoke-static {v2, v4}, Lﹶﾞ/ʿ;->ʻˆ(Lcom/google/android/gms/internal/measurement/ﹳᴵ;[B)Lcom/google/android/gms/internal/measurement/ﹳᴵ;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/ⁱᴵ;
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzmr; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    goto :goto_0

    :catch_0
    invoke-virtual {v0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v4

    iget-object v4, v4, Lﹶﾞ/ﹳـ;->ᵎⁱ:Lﹶﾞ/ʼˈ;

    invoke-virtual {v1}, Lﹶﾞ/ʿᵢ;->ˈٴ()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v5

    const-string v6, "Failed to parse locally stored ad campaign info. appId"

    invoke-virtual {v4, v5, v6}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/ʽʾ;->ʿ()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_15

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/ٴʿ;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ٴʿ;->יـ()Ljava/lang/String;

    move-result-object v7

    const-string v8, "_cmp"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "gclid"

    invoke-static {v5, v7}, Lﹶﾞ/ʿ;->ˎʾ(Lcom/google/android/gms/internal/measurement/ٴʿ;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ˊﾞ;

    move-result-object v7

    if-nez v7, :cond_2

    move-object v7, v6

    goto :goto_2

    :cond_2
    invoke-static {v7}, Lﹶﾞ/ʿ;->ᵔⁱ(Lcom/google/android/gms/internal/measurement/ˊﾞ;)Ljava/io/Serializable;

    move-result-object v7

    :goto_2
    const-string v8, ""

    if-nez v7, :cond_3

    move-object v7, v8

    :cond_3
    check-cast v7, Ljava/lang/String;

    const-string v9, "gbraid"

    invoke-static {v5, v9}, Lﹶﾞ/ʿ;->ˎʾ(Lcom/google/android/gms/internal/measurement/ٴʿ;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ˊﾞ;

    move-result-object v9

    if-nez v9, :cond_4

    move-object v9, v6

    goto :goto_3

    :cond_4
    invoke-static {v9}, Lﹶﾞ/ʿ;->ᵔⁱ(Lcom/google/android/gms/internal/measurement/ˊﾞ;)Ljava/io/Serializable;

    move-result-object v9

    :goto_3
    if-nez v9, :cond_5

    move-object v9, v8

    :cond_5
    check-cast v9, Ljava/lang/String;

    const-string v10, "gad_source"

    invoke-static {v5, v10}, Lﹶﾞ/ʿ;->ˎʾ(Lcom/google/android/gms/internal/measurement/ٴʿ;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ˊﾞ;

    move-result-object v10

    if-nez v10, :cond_6

    move-object v10, v6

    goto :goto_4

    :cond_6
    invoke-static {v10}, Lﹶﾞ/ʿ;->ᵔⁱ(Lcom/google/android/gms/internal/measurement/ˊﾞ;)Ljava/io/Serializable;

    move-result-object v10

    :goto_4
    if-nez v10, :cond_7

    goto :goto_5

    :cond_7
    move-object v8, v10

    :goto_5
    check-cast v8, Ljava/lang/String;

    sget-object v10, Lﹶﾞ/ᴵᵔ;->ˏⁱ:Lﹶﾞ/ˈٴ;

    invoke-virtual {v10, v6}, Lﹶﾞ/ˈٴ;->ﹳٴ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Lﹶﾞ/ᵢי;->ﹶᐧ()Lﹶﾞ/ʿ;

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ٴʿ;->ʼᐧ()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_8
    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/ˊﾞ;

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/ˊﾞ;->ᵔﹳ()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-static {v13}, Lﹶﾞ/ʿ;->ᵔⁱ(Lcom/google/android/gms/internal/measurement/ˊﾞ;)Ljava/io/Serializable;

    move-result-object v14

    if-eqz v14, :cond_8

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/ˊﾞ;->ᵔﹳ()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_9
    invoke-virtual {v11}, Ljava/util/HashMap;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v13, "click_timestamp"

    invoke-static {v5, v13}, Lﹶﾞ/ʿ;->ˎʾ(Lcom/google/android/gms/internal/measurement/ٴʿ;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ˊﾞ;

    move-result-object v13

    if-nez v13, :cond_a

    move-object v13, v6

    goto :goto_7

    :cond_a
    invoke-static {v13}, Lﹶﾞ/ʿ;->ᵔⁱ(Lcom/google/android/gms/internal/measurement/ˊﾞ;)Ljava/io/Serializable;

    move-result-object v13

    :goto_7
    if-nez v13, :cond_b

    goto :goto_8

    :cond_b
    move-object v12, v13

    :goto_8
    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v10, v12, v10

    if-gtz v10, :cond_c

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ٴʿ;->ʽﹳ()J

    move-result-wide v12

    :cond_c
    const-string v10, "_cis"

    invoke-static {v5, v10}, Lﹶﾞ/ʿ;->ˎʾ(Lcom/google/android/gms/internal/measurement/ٴʿ;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ˊﾞ;

    move-result-object v10

    if-nez v10, :cond_d

    goto :goto_9

    :cond_d
    invoke-static {v10}, Lﹶﾞ/ʿ;->ᵔⁱ(Lcom/google/android/gms/internal/measurement/ˊﾞ;)Ljava/io/Serializable;

    move-result-object v6

    :goto_9
    const-string v10, "referrer API v2"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    iget-object v6, v2, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v6, Lcom/google/android/gms/internal/measurement/ˋˊ;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ˋˊ;->ᵔٴ()J

    move-result-wide v10

    cmp-long v6, v12, v10

    if-lez v6, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v6, v2, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v6, Lcom/google/android/gms/internal/measurement/ˋˊ;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ˋˊ;->ᵔﹳ()V

    goto :goto_a

    :cond_e
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v6, v2, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v6, Lcom/google/android/gms/internal/measurement/ˋˊ;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/measurement/ˋˊ;->ʼᐧ(Ljava/lang/String;)V

    :goto_a
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v6, v2, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v6, Lcom/google/android/gms/internal/measurement/ˋˊ;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ˋˊ;->יـ()V

    goto :goto_b

    :cond_f
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v6, v2, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v6, Lcom/google/android/gms/internal/measurement/ˋˊ;

    invoke-virtual {v6, v9}, Lcom/google/android/gms/internal/measurement/ˋˊ;->ﹳᐧ(Ljava/lang/String;)V

    :goto_b
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v6, v2, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v6, Lcom/google/android/gms/internal/measurement/ˋˊ;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ˋˊ;->ʽﹳ()V

    goto :goto_c

    :cond_10
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v6, v2, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v6, Lcom/google/android/gms/internal/measurement/ˋˊ;

    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/measurement/ˋˊ;->ˏי(Ljava/lang/String;)V

    :goto_c
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v6, v2, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v6, Lcom/google/android/gms/internal/measurement/ˋˊ;

    invoke-virtual {v6, v12, v13}, Lcom/google/android/gms/internal/measurement/ˋˊ;->ʻٴ(J)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v6, v2, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v6, Lcom/google/android/gms/internal/measurement/ˋˊ;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ˋˊ;->ʾᵎ()Lcom/google/android/gms/internal/measurement/ᵎﾞ;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ᵎﾞ;->clear()V

    invoke-virtual {v0, v5}, Lﹶﾞ/ᵢי;->ᴵᵔ(Lcom/google/android/gms/internal/measurement/ٴʿ;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v6, v2, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v6, Lcom/google/android/gms/internal/measurement/ˋˊ;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ˋˊ;->ʾᵎ()Lcom/google/android/gms/internal/measurement/ᵎﾞ;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/measurement/ᵎﾞ;->putAll(Ljava/util/Map;)V

    goto/16 :goto_1

    :cond_11
    iget-object v6, v2, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v6, Lcom/google/android/gms/internal/measurement/ˋˊ;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ˋˊ;->ˊʻ()J

    move-result-wide v10

    cmp-long v6, v12, v10

    if-lez v6, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v6, v2, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v6, Lcom/google/android/gms/internal/measurement/ˋˊ;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ˋˊ;->ˊˋ()V

    goto :goto_d

    :cond_12
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v6, v2, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v6, Lcom/google/android/gms/internal/measurement/ˋˊ;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/measurement/ˋˊ;->ˋᵔ(Ljava/lang/String;)V

    :goto_d
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v6, v2, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v6, Lcom/google/android/gms/internal/measurement/ˋˊ;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ˋˊ;->ـˏ()V

    goto :goto_e

    :cond_13
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v6, v2, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v6, Lcom/google/android/gms/internal/measurement/ˋˊ;

    invoke-virtual {v6, v9}, Lcom/google/android/gms/internal/measurement/ˋˊ;->ʼˈ(Ljava/lang/String;)V

    :goto_e
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v6, v2, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v6, Lcom/google/android/gms/internal/measurement/ˋˊ;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ˋˊ;->ˈⁱ()V

    goto :goto_f

    :cond_14
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v6, v2, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v6, Lcom/google/android/gms/internal/measurement/ˋˊ;

    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/measurement/ˋˊ;->ﹳـ(Ljava/lang/String;)V

    :goto_f
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v6, v2, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v6, Lcom/google/android/gms/internal/measurement/ˋˊ;

    invoke-virtual {v6, v12, v13}, Lcom/google/android/gms/internal/measurement/ˋˊ;->ᴵˑ(J)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v6, v2, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v6, Lcom/google/android/gms/internal/measurement/ˋˊ;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ˋˊ;->ـˆ()Lcom/google/android/gms/internal/measurement/ᵎﾞ;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ᵎﾞ;->clear()V

    invoke-virtual {v0, v5}, Lﹶﾞ/ᵢי;->ᴵᵔ(Lcom/google/android/gms/internal/measurement/ٴʿ;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v6, v2, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v6, Lcom/google/android/gms/internal/measurement/ˋˊ;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ˋˊ;->ـˆ()Lcom/google/android/gms/internal/measurement/ᵎﾞ;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/measurement/ᵎﾞ;->putAll(Ljava/util/Map;)V

    goto/16 :goto_1

    :cond_15
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/ˋˊ;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/ˋˊ;->ˑٴ()Lcom/google/android/gms/internal/measurement/ˋˊ;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/ˋˊ;

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    move-object/from16 v5, p2

    iget-object v5, v5, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v5, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ˆˑ(Lcom/google/android/gms/internal/measurement/ˋˊ;)V

    :cond_16
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ˋˊ;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ﾞי;->ﹳٴ()[B

    move-result-object v2

    iget-object v3, v3, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v3}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    invoke-virtual {v3}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    iget-boolean v3, v1, Lﹶﾞ/ʿᵢ;->ˋᵔ:Z

    iget-object v4, v1, Lﹶﾞ/ʿᵢ;->ˉٴ:[B

    const/4 v5, 0x0

    if-eq v4, v2, :cond_17

    const/4 v4, 0x1

    goto :goto_10

    :cond_17
    move v4, v5

    :goto_10
    or-int/2addr v3, v4

    iput-boolean v3, v1, Lﹶﾞ/ʿᵢ;->ˋᵔ:Z

    iput-object v2, v1, Lﹶﾞ/ʿᵢ;->ˉٴ:[B

    invoke-virtual {v1}, Lﹶﾞ/ʿᵢ;->ˉˆ()Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, v0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v2}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v2, v1, v5}, Lﹶﾞ/ˉʿ;->ᐧⁱ(Lﹶﾞ/ʿᵢ;Z)V

    :cond_18
    invoke-virtual {v0}, Lﹶﾞ/ᵢי;->ᴵʼ()Lﹶﾞ/ᵎﹶ;

    move-result-object v2

    sget-object v3, Lﹶﾞ/ᴵᵔ;->ـʻ:Lﹶﾞ/ˈٴ;

    invoke-virtual {v2, v6, v3}, Lﹶﾞ/ᵎﹶ;->ˎˉ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, v0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v2}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v1}, Lﹶﾞ/ʿᵢ;->ˈٴ()Ljava/lang/String;

    move-result-object v1

    const-string v3, "_lgclid"

    invoke-virtual {v2, v1, v3}, Lﹶﾞ/ˉʿ;->ˎᵎ(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    return-void
.end method

.method public final ˆﾞ()V
    .locals 24

    .prologue
    move-object/from16 v1, p0

    iget-object v0, v1, Lﹶﾞ/ᵢי;->ٴᵢ:Lﹶﾞ/ʿ;

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v2

    invoke-virtual {v2}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ʻˋ()V

    iget-wide v2, v1, Lﹶﾞ/ᵢי;->ˈʿ:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎˊ()Lᵎᴵ/ﹳٴ;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v6, v1, Lﹶﾞ/ᵢי;->ˈʿ:J

    sub-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v6, 0x36ee80

    sub-long/2addr v6, v2

    cmp-long v2, v6, v4

    if-lez v2, :cond_0

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v0

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v2, "Upload has been suspended. Will update scheduling later in approximately ms"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ـﹶ()Lﹶﾞ/ᵎᵔ;

    move-result-object v0

    invoke-virtual {v0}, Lﹶﾞ/ᵎᵔ;->ﹳٴ()V

    iget-object v0, v1, Lﹶﾞ/ᵢי;->ᴵᵔ:Lﹶﾞ/ʻˆ;

    invoke-static {v0}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v0}, Lﹶﾞ/ʻˆ;->ʼᵢ()V

    return-void

    :cond_0
    iput-wide v4, v1, Lﹶﾞ/ᵢי;->ˈʿ:J

    :cond_1
    iget-object v2, v1, Lﹶﾞ/ᵢי;->ᵔי:Lﹶﾞ/ᵎʻ;

    invoke-virtual {v2}, Lﹶﾞ/ᵎʻ;->ʽ()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ٴʼ()Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_10

    :cond_2
    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎˊ()Lᵎᴵ/ﹳٴ;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᴵʼ()Lﹶﾞ/ᵎﹶ;

    sget-object v6, Lﹶﾞ/ᴵᵔ;->ˑٴ:Lﹶﾞ/ˈٴ;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lﹶﾞ/ˈٴ;->ﹳٴ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iget-object v6, v1, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v6}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    const-string v10, "select count(1) > 0 from raw_events where realtime = 1"

    invoke-virtual {v6, v10, v7}, Lﹶﾞ/ˉʿ;->ᴵٴ(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v10

    cmp-long v6, v10, v4

    if-eqz v6, :cond_3

    :goto_0
    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    iget-object v6, v1, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v6}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    const-string v12, "select count(1) > 0 from queue where has_realtime = 1"

    invoke-virtual {v6, v12, v7}, Lﹶﾞ/ˉʿ;->ᴵٴ(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v12

    cmp-long v6, v12, v4

    if-eqz v6, :cond_4

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_6

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᴵʼ()Lﹶﾞ/ᵎﹶ;

    move-result-object v12

    const-string v13, "debug.firebase.analytics.app"

    invoke-virtual {v12, v13}, Lﹶﾞ/ᵎﹶ;->ʼᵢ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5

    const-string v13, ".none."

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᴵʼ()Lﹶﾞ/ᵎﹶ;

    sget-object v12, Lﹶﾞ/ᴵᵔ;->ᵎˊ:Lﹶﾞ/ˈٴ;

    invoke-virtual {v12, v7}, Lﹶﾞ/ˈٴ;->ﹳٴ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᴵʼ()Lﹶﾞ/ᵎﹶ;

    sget-object v12, Lﹶﾞ/ᴵᵔ;->ٴʼ:Lﹶﾞ/ˈٴ;

    invoke-virtual {v12, v7}, Lﹶﾞ/ˈٴ;->ﹳٴ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᴵʼ()Lﹶﾞ/ᵎﹶ;

    sget-object v12, Lﹶﾞ/ᴵᵔ;->ᵎⁱ:Lﹶﾞ/ˈٴ;

    invoke-virtual {v12, v7}, Lﹶﾞ/ˈٴ;->ﹳٴ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    :goto_2
    iget-object v14, v1, Lﹶﾞ/ᵢי;->ᵎⁱ:Lﹶﾞ/ˆˎ;

    iget-object v14, v14, Lﹶﾞ/ˆˎ;->ˉٴ:Lⁱי/ʻᵎ;

    invoke-virtual {v14}, Lⁱי/ʻᵎ;->ˈ()J

    move-result-wide v14

    const/16 v16, 0x1

    iget-object v11, v1, Lﹶﾞ/ᵢי;->ᵎⁱ:Lﹶﾞ/ˆˎ;

    iget-object v11, v11, Lﹶﾞ/ˆˎ;->ᵎⁱ:Lⁱי/ʻᵎ;

    invoke-virtual {v11}, Lⁱי/ʻᵎ;->ˈ()J

    move-result-wide v17

    iget-object v11, v1, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v11}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    const-string v10, "select max(bundle_end_timestamp) from queue"

    invoke-virtual {v11, v10, v7, v4, v5}, Lﹶﾞ/ˉʿ;->ˑﹶ(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v10

    iget-object v4, v1, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v4}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    const-string v5, "select max(timestamp) from raw_events"

    move-wide/from16 v22, v2

    const-wide/16 v2, 0x0

    invoke-virtual {v4, v5, v7, v2, v3}, Lﹶﾞ/ˉʿ;->ˑﹶ(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    cmp-long v10, v4, v2

    if-nez v10, :cond_9

    :cond_7
    const-wide/16 v4, 0x0

    :cond_8
    :goto_3
    const-wide/16 v20, 0x0

    goto/16 :goto_7

    :cond_9
    sub-long v4, v4, v22

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    sub-long v2, v22, v2

    sub-long v14, v14, v22

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    sub-long v4, v22, v4

    sub-long v17, v17, v22

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    sub-long v10, v22, v10

    add-long/2addr v8, v2

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    if-eqz v6, :cond_a

    const-wide/16 v20, 0x0

    cmp-long v6, v4, v20

    if-lez v6, :cond_a

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    add-long/2addr v8, v12

    :cond_a
    invoke-static {v0}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v0, v4, v5, v12, v13}, Lﹶﾞ/ʿ;->ᴵٴ(JJ)Z

    move-result v6

    if-nez v6, :cond_b

    add-long/2addr v4, v12

    :goto_4
    const-wide/16 v20, 0x0

    goto :goto_5

    :cond_b
    move-wide v4, v8

    goto :goto_4

    :goto_5
    cmp-long v6, v10, v20

    if-eqz v6, :cond_8

    cmp-long v2, v10, v2

    if-ltz v2, :cond_8

    const/4 v2, 0x0

    :goto_6
    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᴵʼ()Lﹶﾞ/ᵎﹶ;

    sget-object v3, Lﹶﾞ/ᴵᵔ;->ˊˋ:Lﹶﾞ/ˈٴ;

    invoke-virtual {v3, v7}, Lﹶﾞ/ˈٴ;->ﹳٴ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v6, 0x0

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/16 v6, 0x14

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v2, v3, :cond_7

    const-wide/16 v8, 0x1

    shl-long/2addr v8, v2

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᴵʼ()Lﹶﾞ/ᵎﹶ;

    sget-object v3, Lﹶﾞ/ᴵᵔ;->ˋᵔ:Lﹶﾞ/ˈٴ;

    invoke-virtual {v3, v7}, Lﹶﾞ/ˈٴ;->ﹳٴ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    mul-long/2addr v12, v8

    add-long/2addr v4, v12

    cmp-long v3, v4, v10

    if-lez v3, :cond_c

    goto/16 :goto_3

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :goto_7
    cmp-long v2, v4, v20

    if-nez v2, :cond_d

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v0

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v2, "Next upload time is 0"

    invoke-virtual {v0, v2}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ـﹶ()Lﹶﾞ/ᵎᵔ;

    move-result-object v0

    invoke-virtual {v0}, Lﹶﾞ/ᵎᵔ;->ﹳٴ()V

    iget-object v0, v1, Lﹶﾞ/ᵢי;->ᴵᵔ:Lﹶﾞ/ʻˆ;

    invoke-static {v0}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v0}, Lﹶﾞ/ʻˆ;->ʼᵢ()V

    return-void

    :cond_d
    iget-object v2, v1, Lﹶﾞ/ᵢי;->ᴵˊ:Lﹶﾞ/ʿ;

    invoke-static {v2}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v2}, Lﹶﾞ/ʿ;->ـʻ()Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, v1, Lﹶﾞ/ᵢי;->ᵎⁱ:Lﹶﾞ/ˆˎ;

    iget-object v2, v2, Lﹶﾞ/ˆˎ;->ٴᵢ:Lⁱי/ʻᵎ;

    invoke-virtual {v2}, Lⁱי/ʻᵎ;->ˈ()J

    move-result-wide v2

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᴵʼ()Lﹶﾞ/ᵎﹶ;

    sget-object v6, Lﹶﾞ/ᴵᵔ;->ٴᵢ:Lﹶﾞ/ˈٴ;

    invoke-virtual {v6, v7}, Lﹶﾞ/ˈٴ;->ﹳٴ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v14, 0x0

    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    invoke-static {v0}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v0, v2, v3, v8, v9}, Lﹶﾞ/ʿ;->ᴵٴ(JJ)Z

    move-result v0

    if-nez v0, :cond_e

    add-long/2addr v2, v8

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    :cond_e
    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ـﹶ()Lﹶﾞ/ᵎᵔ;

    move-result-object v0

    invoke-virtual {v0}, Lﹶﾞ/ᵎᵔ;->ﹳٴ()V

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎˊ()Lᵎᴵ/ﹳٴ;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v4, v2

    const-wide/16 v14, 0x0

    cmp-long v0, v4, v14

    if-gtz v0, :cond_f

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᴵʼ()Lﹶﾞ/ᵎﹶ;

    sget-object v0, Lﹶﾞ/ᴵᵔ;->ᵔי:Lﹶﾞ/ˈٴ;

    invoke-virtual {v0, v7}, Lﹶﾞ/ˈٴ;->ﹳٴ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v14, v15, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iget-object v0, v1, Lﹶﾞ/ᵢי;->ᵎⁱ:Lﹶﾞ/ˆˎ;

    iget-object v0, v0, Lﹶﾞ/ˆˎ;->ˉٴ:Lⁱי/ʻᵎ;

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎˊ()Lᵎᴵ/ﹳٴ;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lⁱי/ʻᵎ;->ᵔᵢ(J)V

    :cond_f
    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v0

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v2, "Upload scheduled in approximately ms"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v1, Lﹶﾞ/ᵢי;->ᴵᵔ:Lﹶﾞ/ʻˆ;

    invoke-static {v0}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v0}, Lﹶﾞ/ˎᵎ;->ﹶˎ()V

    iget-object v2, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v2, Lﹶﾞ/ᵎʻ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v2, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    iget-object v6, v2, Lﹶﾞ/ᵎʻ;->ʾˋ:Landroid/content/Context;

    invoke-static {v6}, Lﹶﾞ/ᵢﹳ;->ˎᵎ(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_10

    invoke-static {v3}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v8, v3, Lﹶﾞ/ﹳـ;->ˆﾞ:Lﹶﾞ/ʼˈ;

    const-string v9, "Receiver not registered/enabled"

    invoke-virtual {v8, v9}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    :cond_10
    invoke-static {v6}, Lﹶﾞ/ᵢﹳ;->ˊﾞ(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_11

    invoke-static {v3}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v8, v3, Lﹶﾞ/ﹳـ;->ˆﾞ:Lﹶﾞ/ʼˈ;

    const-string v9, "Service not registered/enabled"

    invoke-virtual {v8, v9}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    :cond_11
    invoke-virtual {v0}, Lﹶﾞ/ʻˆ;->ʼᵢ()V

    invoke-static {v3}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v3, v3, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v9, "Scheduling upload, millis"

    invoke-virtual {v3, v8, v9}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v2, Lﹶﾞ/ᵎʻ;->ᵎˊ:Lᵎᴵ/ﹳٴ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long v10, v2, v4

    sget-object v2, Lﹶﾞ/ᴵᵔ;->ˆﾞ:Lﹶﾞ/ˈٴ;

    invoke-virtual {v2, v7}, Lﹶﾞ/ˈٴ;->ﹳٴ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v14, 0x0

    invoke-static {v14, v15, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    cmp-long v2, v4, v2

    if-gez v2, :cond_13

    invoke-virtual {v0}, Lﹶﾞ/ʻˆ;->יˉ()Lﹶﾞ/ᵔʾ;

    move-result-object v2

    iget-wide v2, v2, Lﹶﾞ/ᵔʾ;->ʽ:J

    cmp-long v2, v2, v14

    if-eqz v2, :cond_12

    goto :goto_8

    :cond_12
    invoke-virtual {v0}, Lﹶﾞ/ʻˆ;->יˉ()Lﹶﾞ/ᵔʾ;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Lﹶﾞ/ᵔʾ;->ⁱˊ(J)V

    :cond_13
    :goto_8
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_17

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.google.android.gms.measurement.AppMeasurementJobService"

    invoke-direct {v2, v6, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lﹶﾞ/ʻˆ;->ˈـ()I

    move-result v0

    new-instance v3, Landroid/os/PersistableBundle;

    invoke-direct {v3}, Landroid/os/PersistableBundle;-><init>()V

    const-string v8, "action"

    const-string v9, "com.google.android.gms.measurement.UPLOAD"

    invoke-virtual {v3, v8, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v8, v0, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    invoke-virtual {v8, v4, v5}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    add-long/2addr v4, v4

    invoke-virtual {v0, v4, v5}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v2

    sget-object v0, Lcom/google/android/gms/internal/measurement/ٴᵢ;->ﹳٴ:Ljava/lang/reflect/Method;

    const-string v0, "jobscheduler"

    invoke-virtual {v6, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/app/job/JobScheduler;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/google/android/gms/internal/measurement/ٴᵢ;->ﹳٴ:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_16

    const-string v0, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v6, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_d

    :cond_14
    sget-object v0, Lcom/google/android/gms/internal/measurement/ٴᵢ;->ⁱˊ:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_15

    :try_start_0
    const-class v5, Landroid/os/UserHandle;

    invoke-virtual {v0, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    :catch_0
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_a

    :cond_15
    :goto_9
    const/4 v6, 0x0

    goto :goto_b

    :goto_a
    const/4 v5, 0x6

    const-string v6, "JobSchedulerCompat"

    invoke-static {v6, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_15

    const-string v5, "myUserId invocation illegal"

    nop

    goto :goto_9

    :goto_b
    const-string v5, "UploadAlarm"

    :try_start_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v2, v6, v19

    const-string v7, "com.google.android.gms"

    aput-object v7, v6, v16

    const/4 v7, 0x2

    aput-object v0, v6, v7

    const/4 v0, 0x3

    aput-object v5, v6, v0

    invoke-virtual {v4, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_e

    :catch_2
    move-exception v0

    goto :goto_c

    :catch_3
    move-exception v0

    :goto_c
    const-string v4, "error calling scheduleAsPackage"

    nop

    invoke-virtual {v3, v2}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    goto :goto_e

    :cond_16
    :goto_d
    invoke-virtual {v3, v2}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void

    :cond_17
    iget-object v8, v0, Lﹶﾞ/ʻˆ;->ˈٴ:Landroid/app/AlarmManager;

    if-eqz v8, :cond_18

    sget-object v2, Lﹶﾞ/ᴵᵔ;->ˉٴ:Lﹶﾞ/ˈٴ;

    invoke-virtual {v2, v7}, Lﹶﾞ/ˈٴ;->ﹳٴ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    invoke-virtual {v0}, Lﹶﾞ/ʻˆ;->ˎʾ()Landroid/app/PendingIntent;

    move-result-object v14

    const/4 v9, 0x2

    invoke-virtual/range {v8 .. v14}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    :cond_18
    :goto_e
    return-void

    :cond_19
    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v0

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v2, "No network"

    invoke-virtual {v0, v2}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ـﹶ()Lﹶﾞ/ᵎᵔ;

    move-result-object v0

    iget-object v2, v0, Lﹶﾞ/ᵎᵔ;->ﹳٴ:Lﹶﾞ/ᵢי;

    invoke-virtual {v2}, Lﹶﾞ/ᵢי;->ʻˋ()V

    invoke-virtual {v2}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v3

    invoke-virtual {v3}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    iget-boolean v3, v0, Lﹶﾞ/ᵎᵔ;->ⁱˊ:Z

    if-eqz v3, :cond_1a

    goto :goto_f

    :cond_1a
    iget-object v3, v2, Lﹶﾞ/ᵢי;->ᵔי:Lﹶﾞ/ᵎʻ;

    iget-object v3, v3, Lﹶﾞ/ᵎʻ;->ʾˋ:Landroid/content/Context;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v3, v2, Lﹶﾞ/ᵢי;->ᴵˊ:Lﹶﾞ/ʿ;

    invoke-static {v3}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v3}, Lﹶﾞ/ʿ;->ـʻ()Z

    move-result v3

    iput-boolean v3, v0, Lﹶﾞ/ᵎᵔ;->ʽ:Z

    invoke-virtual {v2}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v2

    iget-object v2, v2, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    iget-boolean v3, v0, Lﹶﾞ/ᵎᵔ;->ʽ:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "Registering connectivity change receiver. Network connected"

    invoke-virtual {v2, v3, v4}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v2, v16

    iput-boolean v2, v0, Lﹶﾞ/ᵎᵔ;->ⁱˊ:Z

    :goto_f
    iget-object v0, v1, Lﹶﾞ/ᵢי;->ᴵᵔ:Lﹶﾞ/ʻˆ;

    invoke-static {v0}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v0}, Lﹶﾞ/ʻˆ;->ʼᵢ()V

    return-void

    :cond_1b
    :goto_10
    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v0

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v2, "Nothing to upload or uploading impossible"

    invoke-virtual {v0, v2}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ـﹶ()Lﹶﾞ/ᵎᵔ;

    move-result-object v0

    invoke-virtual {v0}, Lﹶﾞ/ᵎᵔ;->ﹳٴ()V

    iget-object v0, v1, Lﹶﾞ/ᵢי;->ᴵᵔ:Lﹶﾞ/ʻˆ;

    invoke-static {v0}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v0}, Lﹶﾞ/ʻˆ;->ʼᵢ()V

    return-void
.end method

.method public final ˈ(Lﹶﾞ/ˏי;Lﹶﾞ/ʻᐧ;)V
    .locals 10

    .prologue
    iget-object v1, p2, Lﹶﾞ/ʻᐧ;->ʾˋ:Ljava/lang/String;

    invoke-static {v1}, Lٴﾞ/ʻٴ;->ʽ(Ljava/lang/String;)V

    invoke-static {p1}, Lﹶﾞ/ˈⁱ;->ⁱˊ(Lﹶﾞ/ˏי;)Lﹶﾞ/ˈⁱ;

    move-result-object p1

    iget-object v0, p1, Lﹶﾞ/ˈⁱ;->ˑﹳ:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ﹳﹳ()Lﹶﾞ/ᵢﹳ;

    move-result-object v3

    iget-object v0, p0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v0}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    iget-object v4, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v4, Lﹶﾞ/ᵎʻ;

    invoke-virtual {v0}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    invoke-virtual {v0}, Lﹶﾞ/ˎᵎ;->ﹶˎ()V

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v0}, Lﹶﾞ/ˉʿ;->יⁱ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "select parameters from default_event_params where app_id=?"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v0, v4, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v7, "Default event parameters not found"

    invoke-virtual {v0, v7}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ٴʿ;->ᵢˏ()Lcom/google/android/gms/internal/measurement/ᵔⁱ;

    move-result-object v8

    invoke-static {v8, v7}, Lﹶﾞ/ʿ;->ʻˆ(Lcom/google/android/gms/internal/measurement/ﹳᴵ;[B)Lcom/google/android/gms/internal/measurement/ﹳᴵ;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/ᵔⁱ;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/ٴʿ;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, v0, Lﹶﾞ/ˏʻ;->ᴵˊ:Lﹶﾞ/ᵢי;

    invoke-virtual {v0}, Lﹶﾞ/ᵢי;->ﹶᐧ()Lﹶﾞ/ʿ;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/ٴʿ;->ʼᐧ()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lﹶﾞ/ʿ;->ˈـ(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_4
    iget-object v7, v4, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v7}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v7, v7, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v8, "Failed to retrieve default event parameters. appId"

    invoke-static {v1}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v9

    invoke-virtual {v7, v9, v0, v8}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :goto_0
    move-object v5, v6

    goto/16 :goto_5

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto/16 :goto_5

    :catch_2
    move-exception v0

    move-object v6, v5

    :goto_1
    :try_start_5
    iget-object v4, v4, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v4}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v4, v4, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v7, "Error selecting default event parameters"

    invoke-virtual {v4, v0, v7}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_2
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v5

    :goto_3
    invoke-virtual {v3, v2, v0}, Lﹶﾞ/ᵢﹳ;->ﹳᵢ(Landroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ﹳﹳ()Lﹶﾞ/ᵢﹳ;

    move-result-object v0

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᴵʼ()Lﹶﾞ/ᵎﹶ;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lﹶﾞ/ᴵᵔ;->ʿ:Lﹶﾞ/ˈٴ;

    const/16 v4, 0x64

    invoke-virtual {v2, v1, v3}, Lﹶﾞ/ᵎﹶ;->ˎʾ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)I

    move-result v1

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v2, 0x19

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lﹶﾞ/ᵢﹳ;->ˑˆ(Lﹶﾞ/ˈⁱ;I)V

    invoke-virtual {p1}, Lﹶﾞ/ˈⁱ;->ʽ()Lﹶﾞ/ˏי;

    move-result-object p1

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᴵʼ()Lﹶﾞ/ᵎﹶ;

    move-result-object v0

    sget-object v1, Lﹶﾞ/ᴵᵔ;->ـʻ:Lﹶﾞ/ˈٴ;

    invoke-virtual {v0, v5, v1}, Lﹶﾞ/ᵎﹶ;->ˎˉ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_4

    :cond_2
    iget-object v0, p1, Lﹶﾞ/ˏי;->ʾˋ:Ljava/lang/String;

    const-string v1, "_cmp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lﹶﾞ/ˏי;->ᴵˊ:Lﹶﾞ/יـ;

    iget-object v1, v0, Lﹶﾞ/יـ;->ʾˋ:Landroid/os/Bundle;

    const-string v2, "_cis"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "referrer API v2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "gclid"

    iget-object v0, v0, Lﹶﾞ/יـ;->ʾˋ:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-wide v3, p1, Lﹶﾞ/ˏי;->ˈٴ:J

    new-instance v2, Lﹶﾞ/ʿˎ;

    const-string v7, "auto"

    const-string v6, "_lgclid"

    invoke-direct/range {v2 .. v7}, Lﹶﾞ/ʿˎ;-><init>(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2, p2}, Lﹶﾞ/ᵢי;->ᴵˑ(Lﹶﾞ/ʿˎ;Lﹶﾞ/ʻᐧ;)V

    :cond_3
    :goto_4
    invoke-virtual {p0, p1, p2}, Lﹶﾞ/ᵢי;->ˑﹳ(Lﹶﾞ/ˏי;Lﹶﾞ/ʻᐧ;)V

    return-void

    :goto_5
    if-eqz v5, :cond_4

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_4
    throw p1
.end method

.method public final ˈʿ()Lᵔﹶ/ᵔʾ;
    .locals 1

    iget-object v0, p0, Lﹶﾞ/ᵢי;->ᵔי:Lﹶﾞ/ᵎʻ;

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ʽʽ:Lᵔﹶ/ᵔʾ;

    return-object v0
.end method

.method public final ˈˏ()Lﹶﾞ/ʽ;
    .locals 1

    iget-object v0, p0, Lﹶﾞ/ᵢי;->ˊʻ:Lﹶﾞ/ʽ;

    invoke-static {v0}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    return-object v0
.end method

.method public final ˈٴ(Ljava/lang/String;Lᐧﹳ/ʽ;)I
    .locals 5

    .prologue
    iget-object v0, p0, Lﹶﾞ/ᵢי;->ʾˋ:Lﹶﾞ/ـﹶ;

    invoke-virtual {v0, p1}, Lﹶﾞ/ـﹶ;->ˏⁱ(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ᐧˎ;

    move-result-object v1

    const/4 v2, 0x1

    sget-object v3, Lﹶﾞ/ⁱˉ;->ᴵᵔ:Lﹶﾞ/ⁱˉ;

    if-nez v1, :cond_0

    sget-object p1, Lﹶﾞ/ᵔᵢ;->ٴʼ:Lﹶﾞ/ᵔᵢ;

    invoke-virtual {p2, v3, p1}, Lᐧﹳ/ʽ;->ˈٴ(Lﹶﾞ/ⁱˉ;Lﹶﾞ/ᵔᵢ;)V

    return v2

    :cond_0
    iget-object v1, p0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v1}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v1, p1}, Lﹶﾞ/ˉʿ;->ᵢﹳ(Ljava/lang/String;)Lﹶﾞ/ʿᵢ;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lﹶﾞ/ʿᵢ;->יـ()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lⁱʽ/ﹳٴ;->ʼᐧ(Ljava/lang/String;)Lⁱʽ/ﹳٴ;

    move-result-object v1

    iget-object v1, v1, Lⁱʽ/ﹳٴ;->ʾˋ:Ljava/lang/Object;

    check-cast v1, Lﹶﾞ/ʽⁱ;

    sget-object v4, Lﹶﾞ/ʽⁱ;->ʽʽ:Lﹶﾞ/ʽⁱ;

    if-ne v1, v4, :cond_1

    invoke-virtual {v0, p1, v3}, Lﹶﾞ/ـﹶ;->ʼᵢ(Ljava/lang/String;Lﹶﾞ/ⁱˉ;)Lﹶﾞ/ʽⁱ;

    move-result-object v1

    sget-object v4, Lﹶﾞ/ʽⁱ;->ᴵˊ:Lﹶﾞ/ʽⁱ;

    if-eq v1, v4, :cond_1

    sget-object p1, Lﹶﾞ/ᵔᵢ;->ᵎⁱ:Lﹶﾞ/ᵔᵢ;

    invoke-virtual {p2, v3, p1}, Lᐧﹳ/ʽ;->ˈٴ(Lﹶﾞ/ⁱˉ;Lﹶﾞ/ᵔᵢ;)V

    sget-object p1, Lﹶﾞ/ʽⁱ;->ᴵᵔ:Lﹶﾞ/ʽⁱ;

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_1
    sget-object v1, Lﹶﾞ/ᵔᵢ;->ʽʽ:Lﹶﾞ/ᵔᵢ;

    invoke-virtual {p2, v3, v1}, Lᐧﹳ/ʽ;->ˈٴ(Lﹶﾞ/ⁱˉ;Lﹶﾞ/ᵔᵢ;)V

    invoke-virtual {v0, p1, v3}, Lﹶﾞ/ـﹶ;->ـʻ(Ljava/lang/String;Lﹶﾞ/ⁱˉ;)Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_2
    return v2
.end method

.method public final ˉʿ()V
    .locals 11

    .prologue
    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v0

    invoke-virtual {v0}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ʻˋ()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lﹶﾞ/ᵢי;->ˈⁱ:Z

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lﹶﾞ/ᵢי;->ᵔי:Lﹶﾞ/ᵎʻ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lﹶﾞ/ᵎʻ;->ﾞʻ()Lﹶﾞ/ʿʽ;

    move-result-object v1

    iget-object v1, v1, Lﹶﾞ/ʿʽ;->ᴵᵔ:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v1

    iget-object v1, v1, Lﹶﾞ/ﹳـ;->ᵎⁱ:Lﹶﾞ/ʼˈ;

    const-string v2, "Upload data called on the client side before use of service was decided"

    invoke-virtual {v1, v2}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    goto/16 :goto_9

    :catchall_0
    move-exception v1

    goto/16 :goto_b

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v1

    iget-object v1, v1, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v2, "Upload called in the client side when service should be used"

    invoke-virtual {v1, v2}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_1
    iget-wide v1, p0, Lﹶﾞ/ᵢי;->ˈʿ:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ˆﾞ()V

    goto/16 :goto_9

    :cond_2
    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v1

    invoke-virtual {v1}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    iget-object v1, p0, Lﹶﾞ/ᵢי;->ʿ:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v1

    iget-object v1, v1, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v2, "Uploading requested multiple times"

    invoke-virtual {v1, v2}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_3
    iget-object v1, p0, Lﹶﾞ/ᵢי;->ᴵˊ:Lﹶﾞ/ʿ;

    invoke-static {v1}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v1}, Lﹶﾞ/ʿ;->ـʻ()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v1

    iget-object v1, v1, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v2, "Network not connected, ignoring upload request"

    invoke-virtual {v1, v2}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ˆﾞ()V

    goto/16 :goto_9

    :cond_4
    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎˊ()Lᵎᴵ/ﹳٴ;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᴵʼ()Lﹶﾞ/ᵎﹶ;

    move-result-object v5

    sget-object v6, Lﹶﾞ/ᴵᵔ;->ﹶᐧ:Lﹶﾞ/ˈٴ;

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Lﹶﾞ/ᵎﹶ;->ˎʾ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)I

    move-result v5

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᴵʼ()Lﹶﾞ/ᵎﹶ;

    sget-object v6, Lﹶﾞ/ᴵᵔ;->ˑﹳ:Lﹶﾞ/ˈٴ;

    invoke-virtual {v6, v7}, Lﹶﾞ/ˈٴ;->ﹳٴ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v8, v1, v8

    move v6, v0

    :goto_0
    if-ge v6, v5, :cond_5

    invoke-virtual {p0, v7, v8, v9}, Lﹶﾞ/ᵢי;->ٴᵢ(Ljava/lang/String;J)Z

    move-result v10

    if-eqz v10, :cond_5

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ˉˏ;->ﹳٴ()V

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v5

    invoke-virtual {v5}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ˊʻ()V

    iget-object v5, p0, Lﹶﾞ/ᵢי;->ᵎⁱ:Lﹶﾞ/ˆˎ;

    iget-object v5, v5, Lﹶﾞ/ˆˎ;->ˉٴ:Lⁱי/ʻᵎ;

    invoke-virtual {v5}, Lⁱי/ʻᵎ;->ˈ()J

    move-result-wide v5

    cmp-long v3, v5, v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v3

    iget-object v3, v3, Lﹶﾞ/ﹳـ;->ˆﾞ:Lﹶﾞ/ʼˈ;

    const-string v4, "Uploading events. Elapsed time since last upload attempt (ms)"

    sub-long v5, v1, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    iget-object v3, p0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v3}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v3}, Lﹶﾞ/ˉʿ;->ˎʾ()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-wide/16 v5, -0x1

    if-nez v4, :cond_b

    iget-wide v8, p0, Lﹶﾞ/ᵢי;->ᵎᵔ:J

    cmp-long v4, v8, v5

    if-nez v4, :cond_a

    iget-object v4, p0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v4}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v4}, Lﹶﾞ/ˉʿ;->יⁱ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    const-string v9, "select rowid from raw_events order by rowid desc limit 1;"

    invoke-virtual {v8, v9, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v8, :cond_7

    :goto_1
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_7
    :try_start_3
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v8

    :try_start_4
    iget-object v4, v4, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v4, Lﹶﾞ/ᵎʻ;

    iget-object v4, v4, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v4}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v4, v4, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v9, "Error querying raw events"

    invoke-virtual {v4, v8, v9}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v7, :cond_8

    goto :goto_1

    :cond_8
    :goto_2
    :try_start_5
    iput-wide v5, p0, Lﹶﾞ/ᵢי;->ᵎᵔ:J

    goto :goto_4

    :goto_3
    if-eqz v7, :cond_9

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v1

    :cond_a
    :goto_4
    invoke-virtual {p0, v3, v1, v2}, Lﹶﾞ/ᵢי;->ᵔʾ(Ljava/lang/String;J)V

    goto/16 :goto_9

    :cond_b
    iput-wide v5, p0, Lﹶﾞ/ᵢי;->ᵎᵔ:J

    iget-object v3, p0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v3}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᴵʼ()Lﹶﾞ/ᵎﹶ;

    sget-object v4, Lﹶﾞ/ᴵᵔ;->ˑﹳ:Lﹶﾞ/ˈٴ;

    invoke-virtual {v4, v7}, Lﹶﾞ/ˈٴ;->ﹳٴ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v1, v4

    invoke-virtual {v3}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    invoke-virtual {v3}, Lﹶﾞ/ˎᵎ;->ﹶˎ()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v3}, Lﹶﾞ/ˉʿ;->יⁱ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "select app_id from apps where app_id in (select distinct app_id from raw_events) and config_fetched_time < ? order by failed_config_fetch_time limit 1;"

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, v3, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v2, Lﹶﾞ/ᵎʻ;

    iget-object v2, v2, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v2, v2, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v4, "No expired configs for apps with pending events"

    invoke-virtual {v2, v4}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_5
    :try_start_8
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_8

    :catchall_2
    move-exception v2

    goto :goto_6

    :catch_1
    move-exception v2

    goto :goto_7

    :cond_c
    :try_start_9
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_5

    :goto_6
    move-object v7, v1

    goto :goto_a

    :catchall_3
    move-exception v1

    move-object v2, v1

    goto :goto_a

    :catch_2
    move-exception v1

    move-object v2, v1

    move-object v1, v7

    :goto_7
    :try_start_a
    iget-object v3, v3, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v3, Lﹶﾞ/ᵎʻ;

    iget-object v3, v3, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v3}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v3, v3, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v4, "Error selecting expired configs"

    invoke-virtual {v3, v2, v4}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eqz v1, :cond_d

    goto :goto_5

    :cond_d
    :goto_8
    :try_start_b
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v1}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v1, v7}, Lﹶﾞ/ˉʿ;->ᵢﹳ(Ljava/lang/String;)Lﹶﾞ/ʿᵢ;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {p0, v1}, Lﹶﾞ/ᵢי;->ʾᵎ(Lﹶﾞ/ʿᵢ;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_e
    :goto_9
    iput-boolean v0, p0, Lﹶﾞ/ᵢי;->ˈⁱ:Z

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵔٴ()V

    return-void

    :goto_a
    if-eqz v7, :cond_f

    :try_start_c
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_f
    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :goto_b
    iput-boolean v0, p0, Lﹶﾞ/ᵢי;->ˈⁱ:Z

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵔٴ()V

    throw v1
.end method

.method public final ˉˆ(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    iget-object v0, p0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v0}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v0, p1}, Lﹶﾞ/ˉʿ;->ᵢﹳ(Ljava/lang/String;)Lﹶﾞ/ʿᵢ;

    move-result-object v0

    iget-object v1, p0, Lﹶﾞ/ᵢי;->ᴵʼ:Ljava/util/HashMap;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ﹳﹳ()Lﹶﾞ/ᵢﹳ;

    move-result-object v3

    invoke-virtual {v0}, Lﹶﾞ/ʿᵢ;->ʽʽ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p1, v0}, Lﹶﾞ/ᵢﹳ;->ˆﹳ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v2

    :cond_1
    :goto_0
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lﹶﾞ/ˊـ;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p2, p1, Lﹶﾞ/ˊـ;->ﹳٴ:Lﹶﾞ/ᵢי;

    invoke-virtual {p2}, Lﹶﾞ/ᵢי;->ᵎˊ()Lᵎᴵ/ﹳٴ;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide p1, p1, Lﹶﾞ/ˊـ;->ʽ:J

    cmp-long p1, v0, p1

    if-ltz p1, :cond_3

    :goto_1
    return v2

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public final ˉـ(Ljava/lang/String;Lﹶﾞ/ʻᐧ;)V
    .locals 8

    .prologue
    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v0

    invoke-virtual {v0}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ʻˋ()V

    invoke-static {p2}, Lﹶﾞ/ᵢי;->ـˏ(Lﹶﾞ/ʻᐧ;)Z

    move-result v0

    iget-object v1, p2, Lﹶﾞ/ʻᐧ;->ʾˋ:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p2, Lﹶﾞ/ʻᐧ;->ˉٴ:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p2}, Lﹶﾞ/ᵢי;->ᐧᴵ(Lﹶﾞ/ʻᐧ;)Lﹶﾞ/ʿᵢ;

    return-void

    :cond_1
    invoke-static {p2}, Lﹶﾞ/ᵢי;->ˈⁱ(Lﹶﾞ/ʻᐧ;)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "_npa"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object p1

    iget-object p1, p1, Lﹶﾞ/ﹳـ;->ˆﾞ:Lﹶﾞ/ʼˈ;

    const-string v1, "Falling back to manifest metadata value for ad personalization"

    invoke-virtual {p1, v1}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    new-instance v2, Lﹶﾞ/ʿˎ;

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎˊ()Lᵎᴵ/ﹳٴ;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 p1, 0x1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq p1, v0, :cond_2

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x1

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v7, "auto"

    const-string v6, "_npa"

    invoke-direct/range {v2 .. v7}, Lﹶﾞ/ʿˎ;-><init>(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2, p2}, Lﹶﾞ/ᵢי;->ᴵˑ(Lﹶﾞ/ʿˎ;Lﹶﾞ/ʻᐧ;)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v0

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ˆﾞ:Lﹶﾞ/ʼˈ;

    iget-object v2, p0, Lﹶﾞ/ᵢי;->ᵔי:Lﹶﾞ/ᵎʻ;

    iget-object v3, v2, Lﹶﾞ/ᵎʻ;->ٴʼ:Lﹶﾞ/ˑٴ;

    invoke-virtual {v3, p1}, Lﹶﾞ/ˑٴ;->ʽ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Removing user property"

    invoke-virtual {v0, v3, v4}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v0}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v0}, Lﹶﾞ/ˉʿ;->ˎʼ()V

    :try_start_0
    invoke-virtual {p0, p2}, Lﹶﾞ/ᵢי;->ᐧᴵ(Lﹶﾞ/ʻᐧ;)Lﹶﾞ/ʿᵢ;

    const-string p2, "_id"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {p2}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-static {v1}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    const-string v0, "_lair"

    invoke-virtual {p2, v1, v0}, Lﹶﾞ/ˉʿ;->ˎᵎ(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    :cond_4
    :goto_1
    iget-object p2, p0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {p2}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-static {v1}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    invoke-virtual {p2, v1, p1}, Lﹶﾞ/ˉʿ;->ˎᵎ(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {p2}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {p2}, Lﹶﾞ/ˉʿ;->ʻˆ()V

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object p2

    iget-object p2, p2, Lﹶﾞ/ﹳـ;->ˆﾞ:Lﹶﾞ/ʼˈ;

    const-string v0, "User property removed"

    iget-object v1, v2, Lﹶﾞ/ᵎʻ;->ٴʼ:Lﹶﾞ/ˑٴ;

    invoke-virtual {v1, p1}, Lﹶﾞ/ˑٴ;->ʽ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {p1}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {p1}, Lﹶﾞ/ˉʿ;->ˏʻ()V

    return-void

    :goto_2
    iget-object p2, p0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {p2}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {p2}, Lﹶﾞ/ˉʿ;->ˏʻ()V

    throw p1
.end method

.method public final ˉٴ(Lcom/google/android/gms/internal/measurement/ʽʾ;JZ)V
    .locals 10

    .prologue
    const/4 v0, 0x1

    if-eq v0, p4, :cond_0

    const-string v1, "_lte"

    :goto_0
    move-object v5, v1

    goto :goto_1

    :cond_0
    const-string v1, "_se"

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v1}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ʽʾ;->יـ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lﹶﾞ/ˉʿ;->ᐧˏ(Ljava/lang/String;Ljava/lang/String;)Lﹶﾞ/יי;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v1, Lﹶﾞ/יי;->ˑﹳ:Ljava/lang/Object;

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    new-instance v2, Lﹶﾞ/יי;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ʽʾ;->יـ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎˊ()Lᵎᴵ/ﹳٴ;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long/2addr v8, p2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v4, "auto"

    invoke-direct/range {v2 .. v8}, Lﹶﾞ/יי;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_3

    :cond_2
    :goto_2
    new-instance v2, Lﹶﾞ/יי;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ʽʾ;->יـ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎˊ()Lᵎᴵ/ﹳٴ;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v4, "auto"

    invoke-direct/range {v2 .. v8}, Lﹶﾞ/יי;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    :goto_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ˆʻ;->ʾˋ()Lcom/google/android/gms/internal/measurement/ﾞˊ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v3, Lcom/google/android/gms/internal/measurement/ˆʻ;

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/measurement/ˆʻ;->ʽʽ(Ljava/lang/String;)V

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎˊ()Lᵎᴵ/ﹳٴ;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v6, v1, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v6, Lcom/google/android/gms/internal/measurement/ˆʻ;

    invoke-virtual {v6, v3, v4}, Lcom/google/android/gms/internal/measurement/ˆʻ;->ᴵˊ(J)V

    iget-object v3, v2, Lﹶﾞ/יי;->ˑﹳ:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v4, Lcom/google/android/gms/internal/measurement/ˆʻ;

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/internal/measurement/ˆʻ;->ˊʻ(J)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/ˆʻ;

    invoke-static {p1, v5}, Lﹶﾞ/ʿ;->ˏʻ(Lcom/google/android/gms/internal/measurement/ʽʾ;Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast p1, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {p1, v4, v1}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ᐧᴵ(ILcom/google/android/gms/internal/measurement/ˆʻ;)V

    goto :goto_4

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast p1, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ˏᵢ(Lcom/google/android/gms/internal/measurement/ˆʻ;)V

    :goto_4
    const-wide/16 v4, 0x0

    cmp-long p1, p2, v4

    if-lez p1, :cond_5

    iget-object p1, p0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {p1}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {p1, v2}, Lﹶﾞ/ˉʿ;->ʾˏ(Lﹶﾞ/יי;)Z

    if-eq v0, p4, :cond_4

    const-string p1, "lifetime"

    goto :goto_5

    :cond_4
    const-string p1, "session-scoped"

    :goto_5
    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object p2

    iget-object p2, p2, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string p3, "Updated engagement user property. scope, value"

    invoke-virtual {p2, p1, v3, p3}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public final ˊʻ()V
    .locals 6

    .prologue
    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v0

    invoke-virtual {v0}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    iget-object v0, p0, Lﹶﾞ/ᵢי;->ˋᵔ:Ljava/util/LinkedList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lﹶﾞ/ᵢי;->ـﹶ:Lﹶﾞ/ˆʻ;

    if-nez v0, :cond_0

    iget-object v0, p0, Lﹶﾞ/ᵢי;->ᵔי:Lﹶﾞ/ᵎʻ;

    new-instance v1, Lﹶﾞ/ˆʻ;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v0, v2}, Lﹶﾞ/ˆʻ;-><init>(Ljava/lang/Object;Lﹶﾞ/יﹳ;I)V

    iput-object v1, p0, Lﹶﾞ/ᵢי;->ـﹶ:Lﹶﾞ/ˆʻ;

    :cond_0
    iget-object v0, p0, Lﹶﾞ/ᵢי;->ـﹶ:Lﹶﾞ/ˆʻ;

    iget-wide v0, v0, Lﹶﾞ/ᵔʾ;->ʽ:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎˊ()Lᵎᴵ/ﹳٴ;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lﹶﾞ/ᵢי;->ˈˏ:J

    sub-long/2addr v0, v4

    sget-object v4, Lﹶﾞ/ᴵᵔ;->ʻᴵ:Lﹶﾞ/ˈٴ;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lﹶﾞ/ˈٴ;->ﹳٴ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v2

    iget-object v2, v2, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Scheduling notify next app runnable, delay in ms"

    invoke-virtual {v2, v3, v4}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lﹶﾞ/ᵢי;->ـﹶ:Lﹶﾞ/ˆʻ;

    if-nez v2, :cond_2

    iget-object v2, p0, Lﹶﾞ/ᵢי;->ᵔי:Lﹶﾞ/ᵎʻ;

    new-instance v3, Lﹶﾞ/ˆʻ;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v2, v4}, Lﹶﾞ/ˆʻ;-><init>(Ljava/lang/Object;Lﹶﾞ/יﹳ;I)V

    iput-object v3, p0, Lﹶﾞ/ᵢי;->ـﹶ:Lﹶﾞ/ˆʻ;

    :cond_2
    iget-object v2, p0, Lﹶﾞ/ᵢי;->ـﹶ:Lﹶﾞ/ˆʻ;

    invoke-virtual {v2, v0, v1}, Lﹶﾞ/ᵔʾ;->ⁱˊ(J)V

    :cond_3
    return-void
.end method

.method public final ˊˋ(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    iget-object v0, p0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v0}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    const-string v1, "events"

    invoke-virtual {v0, v1, p1, p2}, Lﹶﾞ/ˉʿ;->ˆˑ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lﹶﾞ/ᵔﹳ;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-wide p1, p1, Lﹶﾞ/ᵔﹳ;->ʽ:J

    const-wide/16 v0, 0x1

    cmp-long p1, p1, v0

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final ˊᵔ()Lﹶﾞ/ˉʿ;
    .locals 1

    iget-object v0, p0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v0}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    return-object v0
.end method

.method public final ˋᵔ(Ljava/lang/String;)Lﹶﾞ/ʻᐧ;
    .locals 41

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    iget-object v1, v0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v1}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v1, v2}, Lﹶﾞ/ˉʿ;->ᵢﹳ(Ljava/lang/String;)Lﹶﾞ/ʿᵢ;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget-object v4, v1, Lﹶﾞ/ʿᵢ;->ﹳٴ:Lﹶﾞ/ᵎʻ;

    invoke-virtual {v1}, Lﹶﾞ/ʿᵢ;->ᵔٴ()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lﹶﾞ/ᵢי;->ˑٴ(Lﹶﾞ/ʿᵢ;)Ljava/lang/Boolean;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v1

    iget-object v1, v1, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    invoke-static {v2}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v2

    const-string v4, "App version does not match; dropping. appId"

    invoke-virtual {v1, v2, v4}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v3

    :cond_1
    new-instance v3, Lﹶﾞ/ʻᐧ;

    move-object v5, v3

    invoke-virtual {v1}, Lﹶﾞ/ʿᵢ;->ٴᵢ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lﹶﾞ/ʿᵢ;->ᵔٴ()Ljava/lang/String;

    move-result-object v6

    move-object v7, v5

    move-object v8, v6

    invoke-virtual {v1}, Lﹶﾞ/ʿᵢ;->ˑٴ()J

    move-result-wide v5

    iget-object v9, v4, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v9}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    invoke-virtual {v9}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    move-object v9, v7

    iget-object v7, v1, Lﹶﾞ/ʿᵢ;->ﾞʻ:Ljava/lang/String;

    iget-object v10, v4, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v10}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    invoke-virtual {v10}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    move-object v11, v8

    move-object v10, v9

    iget-wide v8, v1, Lﹶﾞ/ʿᵢ;->ˉʿ:J

    iget-object v12, v4, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v12}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    invoke-virtual {v12}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    move-object v12, v10

    move-object v13, v11

    iget-wide v10, v1, Lﹶﾞ/ʿᵢ;->ᵔʾ:J

    iget-object v14, v4, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v14}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    invoke-virtual {v14}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    move-object v14, v13

    iget-boolean v13, v1, Lﹶﾞ/ʿᵢ;->ˉˆ:Z

    invoke-virtual {v1}, Lﹶﾞ/ʿᵢ;->ٴʼ()Ljava/lang/String;

    move-result-object v15

    iget-object v0, v4, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    invoke-virtual {v0}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    iget-boolean v0, v1, Lﹶﾞ/ʿᵢ;->ʼᐧ:Z

    invoke-virtual {v1}, Lﹶﾞ/ʿᵢ;->ـˆ()Ljava/lang/Boolean;

    move-result-object v21

    invoke-virtual {v1}, Lﹶﾞ/ʿᵢ;->ⁱˊ()J

    move-result-wide v22

    move/from16 v19, v0

    iget-object v0, v4, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    invoke-virtual {v0}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    iget-object v0, v1, Lﹶﾞ/ʿᵢ;->יـ:Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p1}, Lﹶﾞ/ᵢי;->ﹳٴ(Ljava/lang/String;)Lﹶﾞ/ᐧˎ;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lﹶﾞ/ᐧˎ;->ᵎﹶ()Ljava/lang/String;

    move-result-object v25

    invoke-virtual {v1}, Lﹶﾞ/ʿᵢ;->ʼʼ()Z

    move-result v28

    move-object/from16 v24, v0

    iget-object v0, v4, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    invoke-virtual {v0}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    move-object v0, v3

    iget-wide v2, v1, Lﹶﾞ/ʿᵢ;->ʻٴ:J

    move-object/from16 v16, v0

    invoke-virtual/range {p0 .. p1}, Lﹶﾞ/ᵢי;->ﹳٴ(Ljava/lang/String;)Lﹶﾞ/ᐧˎ;

    move-result-object v0

    iget v0, v0, Lﹶﾞ/ᐧˎ;->ⁱˊ:I

    move/from16 v31, v0

    invoke-virtual/range {p0 .. p1}, Lﹶﾞ/ᵢי;->ᵎʻ(Ljava/lang/String;)Lﹶﾞ/ˉˆ;

    move-result-object v0

    iget-object v0, v0, Lﹶﾞ/ˉˆ;->ⁱˊ:Ljava/lang/String;

    move-object/from16 v32, v0

    iget-object v0, v4, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    invoke-virtual {v0}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    iget v0, v1, Lﹶﾞ/ʿᵢ;->ʾᵎ:I

    iget-object v4, v4, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v4}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    invoke-virtual {v4}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    move-wide/from16 v29, v2

    iget-wide v2, v1, Lﹶﾞ/ʿᵢ;->ᴵˊ:J

    invoke-virtual {v1}, Lﹶﾞ/ʿᵢ;->ʽʽ()Ljava/lang/String;

    move-result-object v36

    invoke-virtual {v1}, Lﹶﾞ/ʿᵢ;->יـ()Ljava/lang/String;

    move-result-object v37

    invoke-virtual {v1}, Lﹶﾞ/ʿᵢ;->ˏי()I

    move-result v40

    const/16 v27, 0x0

    const-wide/16 v38, 0x0

    move-object v1, v12

    const/4 v12, 0x0

    move-object v4, v14

    const/4 v14, 0x0

    move-wide/from16 v34, v2

    move-object/from16 v3, v16

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const-string v26, ""

    move-object/from16 v2, p1

    move/from16 v33, v0

    invoke-direct/range {v1 .. v40}, Lﹶﾞ/ʻᐧ;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JIZZLjava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJILjava/lang/String;IJLjava/lang/String;Ljava/lang/String;JI)V

    return-object v1

    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v0

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ˆﾞ:Lﹶﾞ/ʼˈ;

    const-string v1, "No app data available; dropping"

    invoke-virtual {v0, v2, v1}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v3
.end method

.method public final ˏי(Lcom/google/android/gms/internal/measurement/ʽʾ;Lʾⁱ/ˈ;)V
    .locals 22

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ʽʾ;->ʿᵢ()I

    move-result v4

    if-ge v3, v4, :cond_7

    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v4, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ﾞי(I)Lcom/google/android/gms/internal/measurement/ٴʿ;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ʼˎ()Lcom/google/android/gms/internal/measurement/ﹳᴵ;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/ᵔⁱ;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ˆʾ()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/ˊﾞ;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ˊﾞ;->ᵔﹳ()Ljava/lang/String;

    move-result-object v6

    const-string v7, "_c"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v5, v2, Lʾⁱ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ﹳⁱ()I

    move-result v5

    invoke-virtual {v0}, Lﹶﾞ/ᵢי;->ᴵʼ()Lﹶﾞ/ᵎﹶ;

    move-result-object v6

    iget-object v7, v2, Lʾⁱ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v7, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʼᐧ()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lﹶﾞ/ᴵᵔ;->ˑʼ:Lﹶﾞ/ˈٴ;

    invoke-virtual {v6, v7, v8}, Lﹶﾞ/ᵎﹶ;->ˎʾ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)I

    move-result v6

    if-lt v5, v6, :cond_5

    invoke-virtual {v0}, Lﹶﾞ/ᵢי;->ᴵʼ()Lﹶﾞ/ᵎﹶ;

    move-result-object v5

    iget-object v6, v2, Lʾⁱ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʼᐧ()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lﹶﾞ/ᴵᵔ;->ʾﾞ:Lﹶﾞ/ˈٴ;

    invoke-virtual {v5, v6, v7}, Lﹶﾞ/ᵎﹶ;->ˎʾ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)I

    move-result v5

    iget-object v6, v0, Lﹶﾞ/ᵢי;->ˋᵔ:Ljava/util/LinkedList;

    const-string v7, "Generated trigger URI. appId, uri"

    iget-object v8, v0, Lﹶﾞ/ᵢי;->ٴᵢ:Lﹶﾞ/ʿ;

    const-string v9, "_tr"

    const-string v11, "_tu"

    if-lez v5, :cond_3

    iget-object v14, v0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v14}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v0}, Lﹶﾞ/ᵢי;->ⁱˊ()J

    move-result-wide v15

    iget-object v10, v2, Lʾⁱ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v10, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʼᐧ()Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v14 .. v21}, Lﹶﾞ/ˉʿ;->ʻᐧ(JLjava/lang/String;ZZZZ)Lﹶﾞ/ˆʾ;

    move-result-object v10

    iget-wide v14, v10, Lﹶﾞ/ˆʾ;->ᵎﹶ:J

    int-to-long v12, v5

    cmp-long v5, v14, v12

    if-lez v5, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/ˊﾞ;->ᴵˊ()Lcom/google/android/gms/internal/measurement/ˊˊ;

    move-result-object v5

    const-string v6, "_tnr"

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/measurement/ˊˊ;->ˆʾ(Ljava/lang/String;)V

    const-wide/16 v6, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/measurement/ˊˊ;->ﾞʻ(J)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/ˊﾞ;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ˉʿ(Lcom/google/android/gms/internal/measurement/ˊﾞ;)V

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v0}, Lﹶﾞ/ᵢי;->ᴵʼ()Lﹶﾞ/ᵎﹶ;

    move-result-object v5

    iget-object v10, v2, Lʾⁱ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v10, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʼᐧ()Ljava/lang/String;

    move-result-object v10

    sget-object v12, Lﹶﾞ/ᴵᵔ;->ﾞˋ:Lﹶﾞ/ˈٴ;

    invoke-virtual {v5, v10, v12}, Lﹶﾞ/ᵎﹶ;->ˎˉ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lﹶﾞ/ᵢי;->ﹳﹳ()Lﹶﾞ/ᵢﹳ;

    move-result-object v5

    invoke-virtual {v5}, Lﹶﾞ/ᵢﹳ;->ᐧˏ()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/google/android/gms/internal/measurement/ˊﾞ;->ᴵˊ()Lcom/google/android/gms/internal/measurement/ˊˊ;

    move-result-object v5

    invoke-virtual {v5, v11}, Lcom/google/android/gms/internal/measurement/ˊˊ;->ˆʾ(Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Lcom/google/android/gms/internal/measurement/ˊˊ;->ٴﹶ(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/ˊﾞ;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ˉʿ(Lcom/google/android/gms/internal/measurement/ˊﾞ;)V

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ˊﾞ;->ᴵˊ()Lcom/google/android/gms/internal/measurement/ˊˊ;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/google/android/gms/internal/measurement/ˊˊ;->ˆʾ(Ljava/lang/String;)V

    const-wide/16 v11, 0x1

    invoke-virtual {v5, v11, v12}, Lcom/google/android/gms/internal/measurement/ˊˊ;->ﾞʻ(J)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/ˊﾞ;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ˉʿ(Lcom/google/android/gms/internal/measurement/ˊﾞ;)V

    invoke-static {v8}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    iget-object v5, v2, Lʾⁱ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʼᐧ()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5, v1, v4, v10}, Lﹶﾞ/ʿ;->ʿʽ(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/ʽʾ;Lcom/google/android/gms/internal/measurement/ᵔⁱ;Ljava/lang/String;)Lﹶﾞ/ˎʼ;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v8

    iget-object v8, v8, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    iget-object v9, v2, Lʾⁱ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v9, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʼᐧ()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v5, Lﹶﾞ/ˎʼ;->ʾˋ:Ljava/lang/String;

    invoke-virtual {v8, v9, v10, v7}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, v0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v7}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    iget-object v8, v2, Lʾⁱ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v8, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʼᐧ()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v5}, Lﹶﾞ/ˉʿ;->ـʻ(Ljava/lang/String;Lﹶﾞ/ˎʼ;)V

    iget-object v5, v2, Lʾⁱ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʼᐧ()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, v2, Lʾⁱ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʼᐧ()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_3
    invoke-virtual {v0}, Lﹶﾞ/ᵢי;->ᴵʼ()Lﹶﾞ/ᵎﹶ;

    move-result-object v5

    iget-object v10, v2, Lʾⁱ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v10, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʼᐧ()Ljava/lang/String;

    move-result-object v10

    sget-object v12, Lﹶﾞ/ᴵᵔ;->ﾞˋ:Lﹶﾞ/ˈٴ;

    invoke-virtual {v5, v10, v12}, Lﹶﾞ/ᵎﹶ;->ˎˉ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Lﹶﾞ/ᵢי;->ﹳﹳ()Lﹶﾞ/ᵢﹳ;

    move-result-object v5

    invoke-virtual {v5}, Lﹶﾞ/ᵢﹳ;->ᐧˏ()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/google/android/gms/internal/measurement/ˊﾞ;->ᴵˊ()Lcom/google/android/gms/internal/measurement/ˊˊ;

    move-result-object v5

    invoke-virtual {v5, v11}, Lcom/google/android/gms/internal/measurement/ˊˊ;->ˆʾ(Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Lcom/google/android/gms/internal/measurement/ˊˊ;->ٴﹶ(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/ˊﾞ;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ˉʿ(Lcom/google/android/gms/internal/measurement/ˊﾞ;)V

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    :goto_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ˊﾞ;->ᴵˊ()Lcom/google/android/gms/internal/measurement/ˊˊ;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/google/android/gms/internal/measurement/ˊˊ;->ˆʾ(Ljava/lang/String;)V

    const-wide/16 v11, 0x1

    invoke-virtual {v5, v11, v12}, Lcom/google/android/gms/internal/measurement/ˊˊ;->ﾞʻ(J)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/ˊﾞ;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ˉʿ(Lcom/google/android/gms/internal/measurement/ˊﾞ;)V

    invoke-static {v8}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    iget-object v5, v2, Lʾⁱ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʼᐧ()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5, v1, v4, v10}, Lﹶﾞ/ʿ;->ʿʽ(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/ʽʾ;Lcom/google/android/gms/internal/measurement/ᵔⁱ;Ljava/lang/String;)Lﹶﾞ/ˎʼ;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v8

    iget-object v8, v8, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    iget-object v9, v2, Lʾⁱ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v9, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʼᐧ()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v5, Lﹶﾞ/ˎʼ;->ʾˋ:Ljava/lang/String;

    invoke-virtual {v8, v9, v10, v7}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, v0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v7}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    iget-object v8, v2, Lʾⁱ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v8, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʼᐧ()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v5}, Lﹶﾞ/ˉʿ;->ـʻ(Ljava/lang/String;Lﹶﾞ/ˎʼ;)V

    iget-object v5, v2, Lʾⁱ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʼᐧ()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, v2, Lʾⁱ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʼᐧ()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_3
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/ٴʿ;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v5, v1, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v5, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v5, v3, v4}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ˉـ(ILcom/google/android/gms/internal/measurement/ٴʿ;)V

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public final ˏᵢ(Landroid/os/Bundle;Lﹶﾞ/ʻᐧ;)Ljava/util/List;
    .locals 17

    .prologue
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v3

    invoke-virtual {v3}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/ˉˏ;->ﹳٴ()V

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᴵʼ()Lﹶﾞ/ᵎﹶ;

    move-result-object v3

    iget-object v4, v2, Lﹶﾞ/ʻᐧ;->ʾˋ:Ljava/lang/String;

    sget-object v5, Lﹶﾞ/ᴵᵔ;->ʼᵢ:Lﹶﾞ/ˈٴ;

    invoke-virtual {v3, v4, v5}, Lﹶﾞ/ᵎﹶ;->ˎˉ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)Z

    move-result v3

    if-eqz v3, :cond_9

    if-nez v4, :cond_0

    goto/16 :goto_8

    :cond_0
    if-eqz v0, :cond_3

    const-string v5, "uriSources"

    invoke-virtual {v0, v5}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    const-string v6, "uriTimestamps"

    invoke-virtual {v0, v6}, Landroid/os/BaseBundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v6

    if-eqz v5, :cond_3

    if-eqz v6, :cond_2

    array-length v0, v6

    array-length v7, v5

    if-eq v0, v7, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 v7, 0x0

    :goto_0
    array-length v0, v5

    if-ge v7, v0, :cond_3

    iget-object v0, v1, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v0}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    iget-object v8, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v8, Lﹶﾞ/ᵎʻ;

    aget v9, v5, v7

    aget-wide v10, v6, v7

    invoke-static {v4}, Lٴﾞ/ʻٴ;->ʽ(Ljava/lang/String;)V

    invoke-virtual {v0}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    invoke-virtual {v0}, Lﹶﾞ/ˎᵎ;->ﹶˎ()V

    const-string v12, " trigger URIs. appId, source, timestamp"

    const-string v13, "Pruned "

    :try_start_0
    invoke-virtual {v0}, Lﹶﾞ/ˉʿ;->יⁱ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v14, "trigger_uris"

    const-string v15, "app_id=? and source=? and timestamp_millis<=?"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v16, v5

    :try_start_1
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v4, v3, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v14, v15, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    iget-object v3, v8, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v3}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v3, v3, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2e

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v0, v4, v5, v9}, Lﹶﾞ/ʼˈ;->ˈ(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v16, v5

    :goto_1
    iget-object v3, v8, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v3}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v3, v3, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    invoke-static {v4}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v5

    const-string v8, "Error pruning trigger URIs. appId"

    invoke-virtual {v3, v5, v0, v8}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v5, v16

    goto :goto_0

    :cond_2
    :goto_3
    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v0

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v3, "Uri sources and timestamps do not match"

    invoke-virtual {v0, v3}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    :cond_3
    iget-object v3, v1, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v3}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    iget-object v2, v2, Lﹶﾞ/ʻᐧ;->ʾˋ:Ljava/lang/String;

    invoke-static {v2}, Lٴﾞ/ʻٴ;->ʽ(Ljava/lang/String;)V

    invoke-virtual {v3}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    invoke-virtual {v3}, Lﹶﾞ/ˎᵎ;->ﹶˎ()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v3}, Lﹶﾞ/ˉʿ;->יⁱ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "trigger_uris"

    const-string v7, "trigger_uri"

    const-string v8, "timestamp_millis"

    const-string v9, "source"

    filled-new-array {v7, v8, v9}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "app_id=?"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v9

    const-string v12, "rowid"

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x0

    :cond_4
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_5

    const-string v6, ""

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v7, 0x1

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/4 v9, 0x2

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    new-instance v10, Lﹶﾞ/ˎʼ;

    invoke-direct {v10, v6, v7, v8, v9}, Lﹶﾞ/ˎʼ;-><init>(Ljava/lang/String;JI)V

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v6, :cond_4

    goto :goto_6

    :goto_5
    :try_start_3
    iget-object v3, v3, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v3, Lﹶﾞ/ᵎʻ;

    iget-object v3, v3, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v3}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v3, v3, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v5, "Error querying trigger uris. appId"

    invoke-static {v2}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v2

    invoke-virtual {v3, v2, v0, v5}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_6
    :goto_6
    if-eqz v4, :cond_7

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_7
    return-object v0

    :goto_7
    if-eqz v4, :cond_8

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0

    :cond_9
    :goto_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public final ˑʼ(Lﹶﾞ/ʻᐧ;)V
    .locals 3

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v0

    invoke-virtual {v0}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ʻˋ()V

    iget-object v0, p1, Lﹶﾞ/ʻᐧ;->ʾˋ:Ljava/lang/String;

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ʽ(Ljava/lang/String;)V

    iget v1, p1, Lﹶﾞ/ʻᐧ;->ˉـ:I

    iget-object p1, p1, Lﹶﾞ/ʻᐧ;->ʼˈ:Ljava/lang/String;

    invoke-static {v1, p1}, Lﹶﾞ/ᐧˎ;->ʽ(ILjava/lang/String;)Lﹶﾞ/ᐧˎ;

    move-result-object p1

    invoke-virtual {p0, v0}, Lﹶﾞ/ᵢי;->ﹳٴ(Ljava/lang/String;)Lﹶﾞ/ᐧˎ;

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v1

    iget-object v1, v1, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v2, "Setting storage consent for package"

    invoke-virtual {v1, v0, p1, v2}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v1

    invoke-virtual {v1}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ʻˋ()V

    iget-object v1, p0, Lﹶﾞ/ᵢי;->ᐧﾞ:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v1}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v1, v0, p1}, Lﹶﾞ/ˉʿ;->ˏⁱ(Ljava/lang/String;Lﹶﾞ/ᐧˎ;)V

    return-void
.end method

.method public final ˑٴ(Lﹶﾞ/ʿᵢ;)Ljava/lang/Boolean;
    .locals 5

    .prologue
    :try_start_0
    invoke-virtual {p1}, Lﹶﾞ/ʿᵢ;->ˑٴ()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/32 v2, -0x80000000

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    iget-object v2, p0, Lﹶﾞ/ᵢי;->ᵔי:Lﹶﾞ/ᵎʻ;

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, v2, Lﹶﾞ/ᵎʻ;->ʾˋ:Landroid/content/Context;

    invoke-static {v0}, Lˑˊ/ʽ;->ﹳٴ(Landroid/content/Context;)Lˑˊ/ⁱˊ;

    move-result-object v0

    invoke-virtual {p1}, Lﹶﾞ/ʿᵢ;->ˈٴ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lˑˊ/ⁱˊ;->ﹳٴ(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {p1}, Lﹶﾞ/ʿᵢ;->ˑٴ()J

    move-result-wide v1

    int-to-long v3, v0

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_0
    iget-object v0, v2, Lﹶﾞ/ᵎʻ;->ʾˋ:Landroid/content/Context;

    invoke-static {v0}, Lˑˊ/ʽ;->ﹳٴ(Landroid/content/Context;)Lˑˊ/ⁱˊ;

    move-result-object v0

    invoke-virtual {p1}, Lﹶﾞ/ʿᵢ;->ˈٴ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lˑˊ/ⁱˊ;->ﹳٴ(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p1}, Lﹶﾞ/ʿᵢ;->ᵔٴ()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :cond_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final ˑﹳ(Lﹶﾞ/ˏי;Lﹶﾞ/ʻᐧ;)V
    .locals 20

    .prologue
    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const-string v2, "_s"

    const-string v3, "_sid"

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iget-object v4, v0, Lﹶﾞ/ʻᐧ;->ʾˋ:Ljava/lang/String;

    invoke-static {v4}, Lٴﾞ/ʻٴ;->ʽ(Ljava/lang/String;)V

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v5

    invoke-virtual {v5}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ʻˋ()V

    move-object/from16 v5, p1

    iget-wide v9, v5, Lﹶﾞ/ˏי;->ˈٴ:J

    invoke-static {v5}, Lﹶﾞ/ˈⁱ;->ⁱˊ(Lﹶﾞ/ˏי;)Lﹶﾞ/ˈⁱ;

    move-result-object v5

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v6

    invoke-virtual {v6}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    iget-object v6, v1, Lﹶﾞ/ᵢי;->ʻᵎ:Lﹶﾞ/ﹶʽ;

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    iget-object v6, v1, Lﹶﾞ/ᵢי;->ˊᵔ:Ljava/lang/String;

    if-eqz v6, :cond_0

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    move-object v6, v7

    goto :goto_0

    :cond_1
    iget-object v6, v1, Lﹶﾞ/ᵢי;->ʻᵎ:Lﹶﾞ/ﹶʽ;

    :goto_0
    iget-object v8, v5, Lﹶﾞ/ˈⁱ;->ˑﹳ:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    const/4 v12, 0x0

    invoke-static {v6, v8, v12}, Lﹶﾞ/ᵢﹳ;->ʾˏ(Lﹶﾞ/ﹶʽ;Landroid/os/Bundle;Z)V

    invoke-virtual {v5}, Lﹶﾞ/ˈⁱ;->ʽ()Lﹶﾞ/ˏי;

    move-result-object v5

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹶᐧ()Lﹶﾞ/ʿ;

    iget-object v6, v0, Lﹶﾞ/ʻᐧ;->ᴵˊ:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    return-void

    :cond_2
    iget-boolean v6, v0, Lﹶﾞ/ʻᐧ;->ˉٴ:Z

    if-nez v6, :cond_3

    invoke-virtual {v1, v0}, Lﹶﾞ/ᵢי;->ᐧᴵ(Lﹶﾞ/ʻᐧ;)Lﹶﾞ/ʿᵢ;

    return-void

    :cond_3
    iget-object v6, v0, Lﹶﾞ/ʻᐧ;->ˊˋ:Ljava/util/List;

    if-eqz v6, :cond_5

    iget-object v14, v5, Lﹶﾞ/ˏי;->ʾˋ:Ljava/lang/String;

    invoke-interface {v6, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, v5, Lﹶﾞ/ˏי;->ᴵˊ:Lﹶﾞ/יـ;

    invoke-virtual {v6}, Lﹶﾞ/יـ;->ˑﹳ()Landroid/os/Bundle;

    move-result-object v6

    const-string v8, "ga_safelisted"

    const-wide/16 v12, 0x1

    invoke-virtual {v6, v8, v12, v13}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    new-instance v13, Lﹶﾞ/ˏי;

    new-instance v15, Lﹶﾞ/יـ;

    invoke-direct {v15, v6}, Lﹶﾞ/יـ;-><init>(Landroid/os/Bundle;)V

    iget-object v6, v5, Lﹶﾞ/ˏי;->ʽʽ:Ljava/lang/String;

    iget-wide v11, v5, Lﹶﾞ/ˏי;->ˈٴ:J

    move-object/from16 v16, v6

    move-wide/from16 v17, v11

    invoke-direct/range {v13 .. v18}, Lﹶﾞ/ˏי;-><init>(Ljava/lang/String;Lﹶﾞ/יـ;Ljava/lang/String;J)V

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v0

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ˆﾞ:Lﹶﾞ/ʼˈ;

    iget-object v2, v5, Lﹶﾞ/ˏי;->ʾˋ:Ljava/lang/String;

    iget-object v3, v5, Lﹶﾞ/ˏי;->ʽʽ:Ljava/lang/String;

    const-string v5, "Dropping non-safelisted event. appId, event name, origin"

    invoke-virtual {v0, v5, v4, v2, v3}, Lﹶﾞ/ʼˈ;->ˈ(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_5
    move-object v13, v5

    :goto_1
    iget-object v5, v1, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v5}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v5}, Lﹶﾞ/ˉʿ;->ˎʼ()V

    :try_start_0
    iget-object v5, v13, Lﹶﾞ/ˏי;->ʾˋ:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-wide/16 v11, 0x0

    if-eqz v6, :cond_8

    iget-object v6, v1, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v6}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v6, v4, v2}, Lﹶﾞ/ˉʿ;->ᵔⁱ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, v13, Lﹶﾞ/ˏי;->ᴵˊ:Lﹶﾞ/יـ;

    iget-object v2, v2, Lﹶﾞ/יـ;->ʾˋ:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    cmp-long v2, v14, v11

    if-eqz v2, :cond_8

    iget-object v2, v1, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v2}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    const-string v6, "_f"

    invoke-virtual {v2, v4, v6}, Lﹶﾞ/ˉʿ;->ᵔⁱ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, v1, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v2}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    const-string v6, "_v"

    invoke-virtual {v2, v4, v6}, Lﹶﾞ/ˉʿ;->ᵔⁱ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    iget-object v2, v1, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v2}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎˊ()Lᵎᴵ/ﹳٴ;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v14, -0x3a98

    add-long/2addr v6, v14

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v4, v13}, Lﹶﾞ/ᵢי;->ﾞᴵ(Ljava/lang/String;Lﹶﾞ/ˏי;)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v2, v4, v6, v3, v7}, Lﹶﾞ/ˉʿ;->ˊˊ(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    :cond_7
    :goto_2
    iget-object v2, v1, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v2}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v1, v4, v13}, Lﹶﾞ/ᵢי;->ﾞᴵ(Ljava/lang/String;Lﹶﾞ/ˏי;)Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v2, v4, v7, v3, v6}, Lﹶﾞ/ˉʿ;->ˊˊ(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_8
    :goto_3
    iget-object v2, v1, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v2}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-static {v4}, Lٴﾞ/ʻٴ;->ʽ(Ljava/lang/String;)V

    invoke-virtual {v2}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    invoke-virtual {v2}, Lﹶﾞ/ˎᵎ;->ﹶˎ()V

    cmp-long v3, v9, v11

    if-gez v3, :cond_9

    iget-object v2, v2, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v2, Lﹶﾞ/ᵎʻ;

    iget-object v2, v2, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v2, v2, Lﹶﾞ/ﹳـ;->ᵎⁱ:Lﹶﾞ/ʼˈ;

    const-string v6, "Invalid time querying timed out conditional properties"

    invoke-static {v4}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v7

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v7, v8, v6}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_4

    :cond_9
    const-string v6, "active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout"

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v4, v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lﹶﾞ/ˉʿ;->יˑ(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v12, v1, Lﹶﾞ/ᵢי;->ᵔי:Lﹶﾞ/ᵎʻ;

    if-eqz v6, :cond_c

    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lﹶﾞ/ˑﹳ;

    if-eqz v6, :cond_a

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v7

    iget-object v7, v7, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v8, "User property timed out"

    iget-object v11, v6, Lﹶﾞ/ˑﹳ;->ʾˋ:Ljava/lang/String;

    iget-object v12, v12, Lﹶﾞ/ᵎʻ;->ٴʼ:Lﹶﾞ/ˑٴ;

    iget-object v14, v6, Lﹶﾞ/ˑﹳ;->ʽʽ:Lﹶﾞ/ʿˎ;

    iget-object v14, v14, Lﹶﾞ/ʿˎ;->ᴵˊ:Ljava/lang/String;

    invoke-virtual {v12, v14}, Lﹶﾞ/ˑٴ;->ʽ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-object v14, v6, Lﹶﾞ/ˑﹳ;->ʽʽ:Lﹶﾞ/ʿˎ;

    invoke-virtual {v14}, Lﹶﾞ/ʿˎ;->ﹳٴ()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v7, v8, v11, v12, v14}, Lﹶﾞ/ʼˈ;->ˈ(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v7, v6, Lﹶﾞ/ˑﹳ;->ٴᵢ:Lﹶﾞ/ˏי;

    if-eqz v7, :cond_b

    new-instance v8, Lﹶﾞ/ˏי;

    invoke-direct {v8, v7, v9, v10}, Lﹶﾞ/ˏי;-><init>(Lﹶﾞ/ˏי;J)V

    invoke-virtual {v1, v8, v0}, Lﹶﾞ/ᵢי;->ᵔᵢ(Lﹶﾞ/ˏי;Lﹶﾞ/ʻᐧ;)V

    :cond_b
    iget-object v7, v1, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v7}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    iget-object v6, v6, Lﹶﾞ/ˑﹳ;->ʽʽ:Lﹶﾞ/ʿˎ;

    iget-object v6, v6, Lﹶﾞ/ʿˎ;->ᴵˊ:Ljava/lang/String;

    invoke-virtual {v7, v4, v6}, Lﹶﾞ/ˉʿ;->ʿˎ(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_c
    iget-object v2, v1, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v2}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-static {v4}, Lٴﾞ/ʻٴ;->ʽ(Ljava/lang/String;)V

    invoke-virtual {v2}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    invoke-virtual {v2}, Lﹶﾞ/ˎᵎ;->ﹶˎ()V

    if-gez v3, :cond_d

    iget-object v2, v2, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v2, Lﹶﾞ/ᵎʻ;

    iget-object v2, v2, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v2, v2, Lﹶﾞ/ﹳـ;->ᵎⁱ:Lﹶﾞ/ʼˈ;

    const-string v6, "Invalid time querying expired conditional properties"

    invoke-static {v4}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v7

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v7, v8, v6}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_6

    :cond_d
    const-string v6, "active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live"

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v4, v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lﹶﾞ/ˉʿ;->יˑ(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    :goto_6
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lﹶﾞ/ˑﹳ;

    if-eqz v7, :cond_e

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v8

    iget-object v8, v8, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v11, "User property expired"

    iget-object v14, v7, Lﹶﾞ/ˑﹳ;->ʾˋ:Ljava/lang/String;

    iget-object v15, v12, Lﹶﾞ/ᵎʻ;->ٴʼ:Lﹶﾞ/ˑٴ;

    move-object/from16 v16, v2

    iget-object v2, v7, Lﹶﾞ/ˑﹳ;->ʽʽ:Lﹶﾞ/ʿˎ;

    iget-object v2, v2, Lﹶﾞ/ʿˎ;->ᴵˊ:Ljava/lang/String;

    invoke-virtual {v15, v2}, Lﹶﾞ/ˑٴ;->ʽ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v15, v7, Lﹶﾞ/ˑﹳ;->ʽʽ:Lﹶﾞ/ʿˎ;

    invoke-virtual {v15}, Lﹶﾞ/ʿˎ;->ﹳٴ()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v8, v11, v14, v2, v15}, Lﹶﾞ/ʼˈ;->ˈ(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, v1, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v2}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    iget-object v8, v7, Lﹶﾞ/ˑﹳ;->ʽʽ:Lﹶﾞ/ʿˎ;

    iget-object v8, v8, Lﹶﾞ/ʿˎ;->ᴵˊ:Ljava/lang/String;

    invoke-virtual {v2, v4, v8}, Lﹶﾞ/ˉʿ;->ˎᵎ(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v7, Lﹶﾞ/ˑﹳ;->ᵎˊ:Lﹶﾞ/ˏי;

    if-eqz v2, :cond_f

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    iget-object v2, v1, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v2}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    iget-object v7, v7, Lﹶﾞ/ˑﹳ;->ʽʽ:Lﹶﾞ/ʿˎ;

    iget-object v7, v7, Lﹶﾞ/ʿˎ;->ᴵˊ:Ljava/lang/String;

    invoke-virtual {v2, v4, v7}, Lﹶﾞ/ˉʿ;->ʿˎ(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v16

    goto :goto_7

    :cond_10
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v7, 0x0

    :goto_8
    if-ge v7, v2, :cond_11

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lﹶﾞ/ˏי;

    new-instance v11, Lﹶﾞ/ˏי;

    invoke-direct {v11, v8, v9, v10}, Lﹶﾞ/ˏי;-><init>(Lﹶﾞ/ˏי;J)V

    invoke-virtual {v1, v11, v0}, Lﹶﾞ/ᵢי;->ᵔᵢ(Lﹶﾞ/ˏי;Lﹶﾞ/ʻᐧ;)V

    goto :goto_8

    :cond_11
    iget-object v2, v1, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v2}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-static {v4}, Lٴﾞ/ʻٴ;->ʽ(Ljava/lang/String;)V

    invoke-static {v5}, Lٴﾞ/ʻٴ;->ʽ(Ljava/lang/String;)V

    invoke-virtual {v2}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    invoke-virtual {v2}, Lﹶﾞ/ˎᵎ;->ﹶˎ()V

    if-gez v3, :cond_12

    iget-object v2, v2, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v2, Lﹶﾞ/ᵎʻ;

    iget-object v3, v2, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v3}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v3, v3, Lﹶﾞ/ﹳـ;->ᵎⁱ:Lﹶﾞ/ʼˈ;

    const-string v6, "Invalid time querying triggered conditional properties"

    invoke-static {v4}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v4

    iget-object v2, v2, Lﹶﾞ/ᵎʻ;->ٴʼ:Lﹶﾞ/ˑٴ;

    invoke-virtual {v2, v5}, Lﹶﾞ/ˑٴ;->ﹳٴ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v6, v4, v2, v5}, Lﹶﾞ/ʼˈ;->ˈ(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_9

    :cond_12
    const-string v3, "active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout"

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v4, v5, v6}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lﹶﾞ/ˉʿ;->יˑ(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    :goto_9
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lﹶﾞ/ˑﹳ;

    if-eqz v4, :cond_13

    iget-object v5, v4, Lﹶﾞ/ˑﹳ;->ʽʽ:Lﹶﾞ/ʿˎ;

    new-instance v6, Lﹶﾞ/יי;

    move-object v7, v6

    iget-object v6, v4, Lﹶﾞ/ˑﹳ;->ʾˋ:Ljava/lang/String;

    invoke-static {v6}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    move-object v8, v7

    iget-object v7, v4, Lﹶﾞ/ˑﹳ;->ᴵˊ:Ljava/lang/String;

    move-object v11, v8

    iget-object v8, v5, Lﹶﾞ/ʿˎ;->ᴵˊ:Ljava/lang/String;

    invoke-virtual {v5}, Lﹶﾞ/ʿˎ;->ﹳٴ()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    move-object/from16 v19, v11

    move-object v11, v5

    move-object/from16 v5, v19

    invoke-direct/range {v5 .. v11}, Lﹶﾞ/יי;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    iget-object v6, v5, Lﹶﾞ/יי;->ˑﹳ:Ljava/lang/Object;

    iget-object v7, v5, Lﹶﾞ/יי;->ʽ:Ljava/lang/String;

    iget-object v8, v1, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v8}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v8, v5}, Lﹶﾞ/ˉʿ;->ʾˏ(Lﹶﾞ/יי;)Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v8

    iget-object v8, v8, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v11, "User property triggered"

    iget-object v14, v4, Lﹶﾞ/ˑﹳ;->ʾˋ:Ljava/lang/String;

    iget-object v15, v12, Lﹶﾞ/ᵎʻ;->ٴʼ:Lﹶﾞ/ˑٴ;

    invoke-virtual {v15, v7}, Lﹶﾞ/ˑٴ;->ʽ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v11, v14, v7, v6}, Lﹶﾞ/ʼˈ;->ˈ(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_b

    :cond_14
    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v8

    iget-object v8, v8, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v11, "Too many active user properties, ignoring"

    iget-object v14, v4, Lﹶﾞ/ˑﹳ;->ʾˋ:Ljava/lang/String;

    invoke-static {v14}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v14

    iget-object v15, v12, Lﹶﾞ/ᵎʻ;->ٴʼ:Lﹶﾞ/ˑٴ;

    invoke-virtual {v15, v7}, Lﹶﾞ/ˑٴ;->ʽ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v11, v14, v7, v6}, Lﹶﾞ/ʼˈ;->ˈ(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_b
    iget-object v6, v4, Lﹶﾞ/ˑﹳ;->ᵎⁱ:Lﹶﾞ/ˏי;

    if-eqz v6, :cond_15

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    new-instance v6, Lﹶﾞ/ʿˎ;

    invoke-direct {v6, v5}, Lﹶﾞ/ʿˎ;-><init>(Lﹶﾞ/יי;)V

    iput-object v6, v4, Lﹶﾞ/ˑﹳ;->ʽʽ:Lﹶﾞ/ʿˎ;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lﹶﾞ/ˑﹳ;->ᴵᵔ:Z

    iget-object v5, v1, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v5}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v5, v4}, Lﹶﾞ/ˉʿ;->ᵢי(Lﹶﾞ/ˑﹳ;)Z

    goto/16 :goto_a

    :cond_16
    invoke-virtual {v1, v13, v0}, Lﹶﾞ/ᵢי;->ᵔᵢ(Lﹶﾞ/ˏי;Lﹶﾞ/ʻᐧ;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v12, 0x0

    :goto_c
    if-ge v12, v2, :cond_17

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v12, v12, 0x1

    check-cast v4, Lﹶﾞ/ˏי;

    new-instance v5, Lﹶﾞ/ˏי;

    invoke-direct {v5, v4, v9, v10}, Lﹶﾞ/ˏי;-><init>(Lﹶﾞ/ˏי;J)V

    invoke-virtual {v1, v5, v0}, Lﹶﾞ/ᵢי;->ᵔᵢ(Lﹶﾞ/ˏי;Lﹶﾞ/ʻᐧ;)V

    goto :goto_c

    :cond_17
    iget-object v0, v1, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v0}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v0}, Lﹶﾞ/ˉʿ;->ʻˆ()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, v1, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v0}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v0}, Lﹶﾞ/ˉʿ;->ˏʻ()V

    return-void

    :goto_d
    iget-object v2, v1, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v2}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v2}, Lﹶﾞ/ˉʿ;->ˏʻ()V

    throw v0
.end method

.method public final יـ(Lcom/google/android/gms/internal/measurement/ʽʾ;Ljava/lang/String;)V
    .locals 8

    .prologue
    iget-object v0, p0, Lﹶﾞ/ᵢי;->ʾˋ:Lﹶﾞ/ـﹶ;

    invoke-static {v0}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v0}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    invoke-virtual {v0, p2}, Lﹶﾞ/ـﹶ;->ﾞˋ(Ljava/lang/String;)V

    iget-object v1, v0, Lﹶﾞ/ـﹶ;->ᴵᵔ:Lיـ/ˑﹳ;

    invoke-virtual {v1, p2}, Lיـ/ﹳᐧ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v3, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ﹶʽ(Ljava/util/Set;)V

    :cond_0
    invoke-static {v0}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v0}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    invoke-virtual {v0, p2}, Lﹶﾞ/ـﹶ;->ﾞˋ(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lיـ/ﹳᐧ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, p2}, Lיـ/ﹳᐧ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    const-string v3, "device_model"

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, p2}, Lיـ/ﹳᐧ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    const-string v3, "device_info"

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v2, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʻʼ()V

    :cond_2
    :goto_0
    invoke-static {v0}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v0, p2}, Lﹶﾞ/ـﹶ;->ˊˊ(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v2, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʼﹶ()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v3, :cond_3

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v4, p1, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v4, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ᵎʻ(Ljava/lang/String;)V

    :cond_3
    invoke-static {v0}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v0}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    invoke-virtual {v0, p2}, Lﹶﾞ/ـﹶ;->ﾞˋ(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lיـ/ﹳᐧ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v1, p2}, Lיـ/ﹳᐧ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    const-string v4, "user_id"

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "_id"

    invoke-static {p1, v2}, Lﹶﾞ/ʿ;->ˏʻ(Lcom/google/android/gms/internal/measurement/ʽʾ;Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v3, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ᴵʼ(I)V

    :cond_4
    invoke-static {v0}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v0}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    invoke-virtual {v0, p2}, Lﹶﾞ/ـﹶ;->ﾞˋ(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lיـ/ﹳᐧ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v1, p2}, Lיـ/ﹳᐧ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    const-string v3, "google_signals"

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v2, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ﾞˋ()V

    :cond_5
    invoke-static {v0}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v0, p2}, Lﹶﾞ/ـﹶ;->ˊﾞ(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v2, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ⁱʾ()V

    invoke-virtual {p0, p2}, Lﹶﾞ/ᵢי;->ﹳٴ(Ljava/lang/String;)Lﹶﾞ/ᐧˎ;

    move-result-object v2

    sget-object v3, Lﹶﾞ/ⁱˉ;->ʽʽ:Lﹶﾞ/ⁱˉ;

    invoke-virtual {v2, v3}, Lﹶﾞ/ᐧˎ;->ʼˎ(Lﹶﾞ/ⁱˉ;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lﹶﾞ/ᵢי;->ˏᵢ:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lﹶﾞ/ـˑ;

    if-eqz v3, :cond_6

    iget-wide v4, v3, Lﹶﾞ/ـˑ;->ⁱˊ:J

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᴵʼ()Lﹶﾞ/ᵎﹶ;

    move-result-object v6

    sget-object v7, Lﹶﾞ/ᴵᵔ;->ʻˋ:Lﹶﾞ/ˈٴ;

    invoke-virtual {v6, p2, v7}, Lﹶﾞ/ᵎﹶ;->ˈـ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)J

    move-result-wide v6

    add-long/2addr v6, v4

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎˊ()Lᵎᴵ/ﹳٴ;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    cmp-long v4, v6, v4

    if-gez v4, :cond_7

    :cond_6
    new-instance v3, Lﹶﾞ/ـˑ;

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ﹳﹳ()Lﹶﾞ/ᵢﹳ;

    move-result-object v4

    invoke-virtual {v4}, Lﹶﾞ/ᵢﹳ;->ᐧˏ()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lﹶﾞ/ـˑ;-><init>(Lﹶﾞ/ᵢי;Ljava/lang/String;)V

    invoke-virtual {v2, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v2, v3, Lﹶﾞ/ـˑ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v3, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ᵔⁱ(Ljava/lang/String;)V

    :cond_8
    invoke-static {v0}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v0}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    invoke-virtual {v0, p2}, Lﹶﾞ/ـﹶ;->ﾞˋ(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lיـ/ﹳᐧ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v1, p2}, Lיـ/ﹳᐧ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    const-string v0, "enhanced_user_id"

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast p1, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ˋـ()V

    :cond_9
    return-void
.end method

.method public final ـˆ()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lﹶﾞ/ᵢי;->ᵔי:Lﹶﾞ/ᵎʻ;

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ʾˋ:Landroid/content/Context;

    return-object v0
.end method

.method public final ـᵎ(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 11

    .prologue
    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v0

    invoke-virtual {v0}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ʻˋ()V

    iget-object v0, p0, Lﹶﾞ/ᵢי;->ʾˋ:Lﹶﾞ/ـﹶ;

    invoke-static {v0}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v0, p1}, Lﹶﾞ/ـﹶ;->ˏⁱ(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ᐧˎ;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1}, Lﹶﾞ/ᵢי;->ﹳٴ(Ljava/lang/String;)Lﹶﾞ/ᐧˎ;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iget-object v4, v2, Lﹶﾞ/ᐧˎ;->ﹳٴ:Ljava/util/EnumMap;

    invoke-virtual {v4}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x3

    const/4 v7, 0x2

    const-string v8, "denied"

    const-string v9, "granted"

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lﹶﾞ/ʽⁱ;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    if-eq v10, v7, :cond_3

    if-eq v10, v6, :cond_2

    move-object v8, v1

    goto :goto_1

    :cond_2
    move-object v8, v9

    :cond_3
    :goto_1
    if-eqz v8, :cond_1

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lﹶﾞ/ⁱˉ;

    iget-object v5, v5, Lﹶﾞ/ⁱˉ;->ʾˋ:Ljava/lang/String;

    invoke-virtual {v3, v5, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lﹶﾞ/ᵢי;->ᵎʻ(Ljava/lang/String;)Lﹶﾞ/ˉˆ;

    move-result-object v3

    new-instance v4, Lᐧﹳ/ʽ;

    const/16 v5, 0x18

    invoke-direct {v4, v5}, Lᐧﹳ/ʽ;-><init>(I)V

    invoke-virtual {p0, p1, v3, v2, v4}, Lﹶﾞ/ᵢי;->ʽᵔ(Ljava/lang/String;Lﹶﾞ/ˉˆ;Lﹶﾞ/ᐧˎ;Lᐧﹳ/ʽ;)Lﹶﾞ/ˉˆ;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iget-object v4, v2, Lﹶﾞ/ˉˆ;->ˑﹳ:Ljava/util/EnumMap;

    invoke-virtual {v4}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lﹶﾞ/ʽⁱ;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    if-eq v10, v7, :cond_7

    if-eq v10, v6, :cond_6

    move-object v10, v1

    goto :goto_3

    :cond_6
    move-object v10, v9

    goto :goto_3

    :cond_7
    move-object v10, v8

    :goto_3
    if-eqz v10, :cond_5

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lﹶﾞ/ⁱˉ;

    iget-object v5, v5, Lﹶﾞ/ⁱˉ;->ʾˋ:Ljava/lang/String;

    invoke-virtual {v3, v5, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    iget-object v1, v2, Lﹶﾞ/ˉˆ;->ʽ:Ljava/lang/Boolean;

    if-eqz v1, :cond_9

    const-string v4, "is_dma_region"

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    iget-object v1, v2, Lﹶﾞ/ˉˆ;->ˈ:Ljava/lang/String;

    if-eqz v1, :cond_a

    const-string v2, "cps_display_str"

    invoke-virtual {v3, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    iget-object v1, p0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v1}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    const-string v2, "_npa"

    invoke-virtual {v1, p1, v2}, Lﹶﾞ/ˉʿ;->ᐧˏ(Ljava/lang/String;Ljava/lang/String;)Lﹶﾞ/יי;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object p1, v1, Lﹶﾞ/יי;->ˑﹳ:Ljava/lang/Object;

    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_4

    :cond_b
    new-instance v1, Lᐧﹳ/ʽ;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, Lᐧﹳ/ʽ;-><init>(I)V

    invoke-virtual {p0, p1, v1}, Lﹶﾞ/ᵢי;->ˈٴ(Ljava/lang/String;Lᐧﹳ/ʽ;)I

    move-result p1

    :goto_4
    const/4 v1, 0x1

    if-eq v1, p1, :cond_c

    move-object v8, v9

    :cond_c
    const-string p1, "ad_personalization"

    invoke-virtual {v0, p1, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final ـﹶ()Lﹶﾞ/ᵎᵔ;
    .locals 2

    .prologue
    iget-object v0, p0, Lﹶﾞ/ᵢי;->ˈٴ:Lﹶﾞ/ᵎᵔ;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Network broadcast receiver not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ٴʼ()Z
    .locals 4

    .prologue
    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v0

    invoke-virtual {v0}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ʻˋ()V

    iget-object v0, p0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v0}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    const-string v1, "select count(1) > 0 from raw_events"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lﹶﾞ/ˉʿ;->ᴵٴ(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v0}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v0}, Lﹶﾞ/ˉʿ;->ˎʾ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final ٴᵢ(Ljava/lang/String;J)Z
    .locals 46

    .prologue
    move-object/from16 v1, p0

    const-string v0, "_f"

    const-string v2, "1"

    const-string v3, "_ai"

    const-string v4, "purchase"

    const-string v5, "items"

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ˊᵔ()Lﹶﾞ/ˉʿ;

    move-result-object v9

    invoke-virtual {v9}, Lﹶﾞ/ˉʿ;->ˎʼ()V

    :try_start_0
    new-instance v9, Lʾⁱ/ˈ;

    invoke-direct {v9, v1}, Lʾⁱ/ˈ;-><init>(Lﹶﾞ/ᵢי;)V

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ˊᵔ()Lﹶﾞ/ˉʿ;

    move-result-object v10

    iget-wide v14, v1, Lﹶﾞ/ᵢי;->ᵎᵔ:J

    move-object/from16 v11, p1

    move-wide/from16 v12, p2

    move-object/from16 v16, v9

    invoke-virtual/range {v10 .. v16}, Lﹶﾞ/ˉʿ;->ˉʽ(Ljava/lang/String;JJLʾⁱ/ˈ;)V

    move-object/from16 v9, v16

    iget-object v10, v9, Lʾⁱ/ˈ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v10, Ljava/util/ArrayList;

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    const/4 v4, 0x0

    goto/16 :goto_3e

    :cond_1
    iget-object v10, v9, Lʾⁱ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v10, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ʼˎ()Lcom/google/android/gms/internal/measurement/ﹳᴵ;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/ʽʾ;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v12, v10, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v12, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ᵎᵔ()V

    const/4 v11, -0x1

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_0
    iget-object v12, v9, Lʾⁱ/ˈ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "_et"

    const-string v7, "_fr"

    move/from16 v22, v15

    const-string v15, "_e"

    move-object/from16 v23, v8

    iget-object v8, v1, Lﹶﾞ/ᵢי;->ᵔי:Lﹶﾞ/ᵎʻ;

    move-object/from16 v24, v8

    if-ge v14, v12, :cond_36

    :try_start_1
    iget-object v12, v9, Lʾⁱ/ˈ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/ٴʿ;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ʼˎ()Lcom/google/android/gms/internal/measurement/ﹳᴵ;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/ᵔⁱ;

    const/16 v25, 0x1

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ʻᵎ()Lﹶﾞ/ـﹶ;

    move-result-object v8

    move/from16 v26, v14

    iget-object v14, v9, Lʾⁱ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v14, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʼᐧ()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v27, v5

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ᵔﹳ()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v14, v5}, Lﹶﾞ/ـﹶ;->ᵔⁱ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v8, "_err"

    if-eqz v5, :cond_4

    :try_start_2
    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v5

    invoke-virtual {v5}, Lﹶﾞ/ﹳـ;->יˉ()Lﹶﾞ/ʼˈ;

    move-result-object v5

    const-string v6, "Dropping blocked raw event. appId"

    iget-object v7, v9, Lʾⁱ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v7, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʼᐧ()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v7

    invoke-virtual/range {v24 .. v24}, Lﹶﾞ/ᵎʻ;->ˆʾ()Lﹶﾞ/ˑٴ;

    move-result-object v14

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ᵔﹳ()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lﹶﾞ/ˑٴ;->ﹳٴ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v7, v14, v6}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ʻᵎ()Lﹶﾞ/ـﹶ;

    move-result-object v5

    iget-object v6, v9, Lʾⁱ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʼᐧ()Ljava/lang/String;

    move-result-object v6

    const-string v7, "measurement.upload.blacklist_internal"

    invoke-virtual {v5, v6, v7}, Lﹶﾞ/ـﹶ;->ʽ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ʻᵎ()Lﹶﾞ/ـﹶ;

    move-result-object v5

    iget-object v6, v9, Lʾⁱ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʼᐧ()Ljava/lang/String;

    move-result-object v6

    const-string v7, "measurement.upload.blacklist_public"

    invoke-virtual {v5, v6, v7}, Lﹶﾞ/ـﹶ;->ʽ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ᵔﹳ()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹳﹳ()Lﹶﾞ/ᵢﹳ;

    iget-object v5, v1, Lﹶﾞ/ᵢי;->ﹶᐧ:Lᐧﹳ/ʽ;

    iget-object v6, v9, Lʾⁱ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʼᐧ()Ljava/lang/String;

    move-result-object v29

    const-string v31, "_ev"

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ᵔﹳ()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x0

    const/16 v30, 0xb

    move-object/from16 v28, v5

    invoke-static/range {v28 .. v33}, Lﹶﾞ/ᵢﹳ;->ٴʿ(Lﹶﾞ/יˑ;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_40

    :cond_3
    :goto_1
    move-object/from16 v28, v2

    move-object/from16 v31, v3

    move-object/from16 v32, v4

    move/from16 v15, v22

    move/from16 v4, v26

    move-object/from16 v7, v27

    goto/16 :goto_1d

    :cond_4
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ᵔﹳ()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v28, v2

    const-string v2, "ecommerce_purchase"

    move/from16 v29, v14

    const-string v14, "_iap"

    if-nez v29, :cond_6

    :try_start_3
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_6

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_2

    :cond_5
    move/from16 v29, v11

    goto :goto_4

    :cond_6
    :goto_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ˊﾞ;->ᴵˊ()Lcom/google/android/gms/internal/measurement/ˊˊ;

    move-result-object v5

    move/from16 v29, v11

    const-string v11, "_ct"

    invoke-virtual {v5, v11}, Lcom/google/android/gms/internal/measurement/ˊˊ;->ˆʾ(Ljava/lang/String;)V

    if-nez v16, :cond_7

    iget-object v11, v9, Lʾⁱ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v11, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʼᐧ()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11, v4}, Lﹶﾞ/ᵢי;->ˊˋ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-virtual {v1, v11, v14}, Lﹶﾞ/ᵢי;->ˊˋ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-virtual {v1, v11, v2}, Lﹶﾞ/ᵢי;->ˊˋ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_7

    const-string v2, "new"

    goto :goto_3

    :cond_7
    const-string v2, "returning"

    :goto_3
    :try_start_4
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/measurement/ˊˊ;->ٴﹶ(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ˊﾞ;

    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ˉʿ(Lcom/google/android/gms/internal/measurement/ˊﾞ;)V

    move/from16 v16, v25

    :goto_4
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ᵔﹳ()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lﹶﾞ/ʻᴵ;->ʽ:[Ljava/lang/String;

    sget-object v11, Lﹶﾞ/ʻᴵ;->ﹳٴ:[Ljava/lang/String;

    invoke-static {v3, v5, v11}, Lﹶﾞ/ʻᴵ;->ᵎﹶ(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v2, v12, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v2, Lcom/google/android/gms/internal/measurement/ٴʿ;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/ٴʿ;->ˊʻ(Ljava/lang/String;)V

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v2

    invoke-virtual {v2}, Lﹶﾞ/ﹳـ;->ˈـ()Lﹶﾞ/ʼˈ;

    move-result-object v2

    const-string v5, "Renaming ad_impression to _ai"

    invoke-virtual {v2, v5}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v2

    invoke-virtual {v2}, Lﹶﾞ/ﹳـ;->ˎˉ()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x5

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    :goto_5
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ٴﹶ()I

    move-result v5

    if-ge v2, v5, :cond_9

    const-string v5, "ad_platform"

    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ﾞʻ(I)Lcom/google/android/gms/internal/measurement/ˊﾞ;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/ˊﾞ;->ᵔﹳ()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ﾞʻ(I)Lcom/google/android/gms/internal/measurement/ˊﾞ;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ˊﾞ;->יـ()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "admob"

    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ﾞʻ(I)Lcom/google/android/gms/internal/measurement/ˊﾞ;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/ˊﾞ;->יـ()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v5

    iget-object v5, v5, Lﹶﾞ/ﹳـ;->ᵎˊ:Lﹶﾞ/ʼˈ;

    const-string v11, "AdMob ad impression logged from app. Potentially duplicative."

    invoke-virtual {v5, v11}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_9
    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ʻᵎ()Lﹶﾞ/ـﹶ;

    move-result-object v2

    iget-object v5, v9, Lʾⁱ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʼᐧ()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ᵔﹳ()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v5, v11}, Lﹶﾞ/ـﹶ;->ٴʿ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v5, "_c"

    if-nez v2, :cond_c

    :try_start_5
    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹶᐧ()Lﹶﾞ/ʿ;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ᵔﹳ()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lٴﾞ/ʻٴ;->ʽ(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move/from16 v30, v2

    const v2, 0x17333

    if-eq v14, v2, :cond_a

    goto :goto_7

    :cond_a
    const-string v2, "_ui"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :goto_6
    move-object/from16 v31, v3

    const/4 v2, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    goto :goto_8

    :cond_b
    :goto_7
    move-object/from16 v31, v3

    move-object/from16 v32, v4

    move-object/from16 v33, v10

    const/16 v30, 0x0

    goto/16 :goto_d

    :cond_c
    move/from16 v30, v2

    goto :goto_6

    :goto_8
    :try_start_6
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ٴﹶ()I

    move-result v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object/from16 v32, v4

    const-string v4, "_r"

    if-ge v2, v3, :cond_f

    :try_start_7
    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ﾞʻ(I)Lcom/google/android/gms/internal/measurement/ˊﾞ;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ˊﾞ;->ᵔﹳ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ﾞʻ(I)Lcom/google/android/gms/internal/measurement/ˊﾞ;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ʼˎ()Lcom/google/android/gms/internal/measurement/ﹳᴵ;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/ˊˊ;

    move-object/from16 v33, v10

    const-wide/16 v10, 0x1

    invoke-virtual {v3, v10, v11}, Lcom/google/android/gms/internal/measurement/ˊˊ;->ﾞʻ(J)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/ˊﾞ;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v4, v12, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v4, Lcom/google/android/gms/internal/measurement/ٴʿ;

    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/measurement/ٴʿ;->ʾˋ(ILcom/google/android/gms/internal/measurement/ˊﾞ;)V

    move/from16 v11, v25

    goto :goto_9

    :cond_d
    move-object/from16 v33, v10

    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ﾞʻ(I)Lcom/google/android/gms/internal/measurement/ˊﾞ;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ˊﾞ;->ᵔﹳ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ﾞʻ(I)Lcom/google/android/gms/internal/measurement/ˊﾞ;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ʼˎ()Lcom/google/android/gms/internal/measurement/ﹳᴵ;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/ˊˊ;

    move/from16 v34, v11

    const-wide/16 v10, 0x1

    invoke-virtual {v3, v10, v11}, Lcom/google/android/gms/internal/measurement/ˊˊ;->ﾞʻ(J)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/ˊﾞ;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v4, v12, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v4, Lcom/google/android/gms/internal/measurement/ٴʿ;

    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/measurement/ٴʿ;->ʾˋ(ILcom/google/android/gms/internal/measurement/ˊﾞ;)V

    move/from16 v14, v25

    move/from16 v11, v34

    goto :goto_9

    :cond_e
    move/from16 v34, v11

    :goto_9
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v4, v32

    move-object/from16 v10, v33

    goto :goto_8

    :cond_f
    move-object/from16 v33, v10

    move/from16 v34, v11

    if-nez v34, :cond_10

    if-eqz v30, :cond_10

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v2

    invoke-virtual {v2}, Lﹶﾞ/ﹳـ;->ˈـ()Lﹶﾞ/ʼˈ;

    move-result-object v2

    const-string v3, "Marking event as conversion"

    invoke-virtual/range {v24 .. v24}, Lﹶﾞ/ᵎʻ;->ˆʾ()Lﹶﾞ/ˑٴ;

    move-result-object v10

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ᵔﹳ()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lﹶﾞ/ˑٴ;->ﹳٴ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10, v3}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/ˊﾞ;->ᴵˊ()Lcom/google/android/gms/internal/measurement/ˊˊ;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/measurement/ˊˊ;->ˆʾ(Ljava/lang/String;)V

    const-wide/16 v10, 0x1

    invoke-virtual {v2, v10, v11}, Lcom/google/android/gms/internal/measurement/ˊˊ;->ﾞʻ(J)V

    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ᵔʾ(Lcom/google/android/gms/internal/measurement/ˊˊ;)V

    :cond_10
    if-nez v14, :cond_11

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v2

    invoke-virtual {v2}, Lﹶﾞ/ﹳـ;->ˈـ()Lﹶﾞ/ʼˈ;

    move-result-object v2

    const-string v3, "Marking event as real-time"

    invoke-virtual/range {v24 .. v24}, Lﹶﾞ/ᵎʻ;->ˆʾ()Lﹶﾞ/ˑٴ;

    move-result-object v10

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ᵔﹳ()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lﹶﾞ/ˑٴ;->ﹳٴ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10, v3}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/ˊﾞ;->ᴵˊ()Lcom/google/android/gms/internal/measurement/ˊˊ;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/measurement/ˊˊ;->ˆʾ(Ljava/lang/String;)V

    const-wide/16 v10, 0x1

    invoke-virtual {v2, v10, v11}, Lcom/google/android/gms/internal/measurement/ˊˊ;->ﾞʻ(J)V

    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ᵔʾ(Lcom/google/android/gms/internal/measurement/ˊˊ;)V

    :cond_11
    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ˊᵔ()Lﹶﾞ/ˉʿ;

    move-result-object v34

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ⁱˊ()J

    move-result-wide v35

    iget-object v2, v9, Lʾⁱ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʼᐧ()Ljava/lang/String;

    move-result-object v37

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x1

    invoke-virtual/range {v34 .. v41}, Lﹶﾞ/ˉʿ;->ʻᐧ(JLjava/lang/String;ZZZZ)Lﹶﾞ/ˆʾ;

    move-result-object v2

    iget-wide v2, v2, Lﹶﾞ/ˆʾ;->ˑﹳ:J

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᴵʼ()Lﹶﾞ/ᵎﹶ;

    move-result-object v10

    iget-object v11, v9, Lʾⁱ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v11, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʼᐧ()Ljava/lang/String;

    move-result-object v11

    sget-object v14, Lﹶﾞ/ᴵᵔ;->ʼᐧ:Lﹶﾞ/ˈٴ;

    invoke-virtual {v10, v11, v14}, Lﹶﾞ/ᵎﹶ;->ˎʾ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)I

    move-result v10

    int-to-long v10, v10

    cmp-long v2, v2, v10

    if-lez v2, :cond_12

    invoke-static {v12, v4}, Lﹶﾞ/ᵢי;->ʽʽ(Lcom/google/android/gms/internal/measurement/ᵔⁱ;Ljava/lang/String;)V

    goto :goto_a

    :cond_12
    move/from16 v17, v25

    :goto_a
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ᵔﹳ()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lﹶﾞ/ᵢﹳ;->יי(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    if-eqz v30, :cond_19

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ˊᵔ()Lﹶﾞ/ˉʿ;

    move-result-object v34

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ⁱˊ()J

    move-result-wide v35

    iget-object v2, v9, Lʾⁱ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʼᐧ()Ljava/lang/String;

    move-result-object v37

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v38, 0x1

    const/16 v39, 0x0

    invoke-virtual/range {v34 .. v41}, Lﹶﾞ/ˉʿ;->ʻᐧ(JLjava/lang/String;ZZZZ)Lﹶﾞ/ˆʾ;

    move-result-object v2

    iget-wide v2, v2, Lﹶﾞ/ˆʾ;->ʽ:J

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᴵʼ()Lﹶﾞ/ᵎﹶ;

    move-result-object v4

    iget-object v10, v9, Lʾⁱ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v10, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʼᐧ()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lﹶﾞ/ᴵᵔ;->ˉˆ:Lﹶﾞ/ˈٴ;

    invoke-virtual {v4, v10, v11}, Lﹶﾞ/ᵎﹶ;->ˎʾ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)I

    move-result v4

    int-to-long v10, v4

    cmp-long v2, v2, v10

    if-lez v2, :cond_19

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v2

    invoke-virtual {v2}, Lﹶﾞ/ﹳـ;->יˉ()Lﹶﾞ/ʼˈ;

    move-result-object v2

    const-string v3, "Too many conversions. Not logging as conversion. appId"

    iget-object v4, v9, Lʾⁱ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʼᐧ()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v10, -0x1

    :goto_b
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ٴﹶ()I

    move-result v11

    if-ge v2, v11, :cond_15

    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ﾞʻ(I)Lcom/google/android/gms/internal/measurement/ˊﾞ;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/ˊﾞ;->ᵔﹳ()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_13

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ʼˎ()Lcom/google/android/gms/internal/measurement/ﹳᴵ;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/ˊˊ;

    move v10, v2

    goto :goto_c

    :cond_13
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/ˊﾞ;->ᵔﹳ()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    move/from16 v3, v25

    :cond_14
    :goto_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_15
    if-eqz v3, :cond_17

    if-eqz v4, :cond_16

    invoke-virtual {v12, v10}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ʼᐧ(I)V

    goto :goto_d

    :cond_16
    const/4 v4, 0x0

    :cond_17
    if-eqz v4, :cond_18

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ˈ()Lcom/google/android/gms/internal/measurement/ﹳᴵ;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ˊˊ;

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/measurement/ˊˊ;->ˆʾ(Ljava/lang/String;)V

    const-wide/16 v3, 0xa

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/ˊˊ;->ﾞʻ(J)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ˊﾞ;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v3, v12, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v3, Lcom/google/android/gms/internal/measurement/ٴʿ;

    invoke-virtual {v3, v10, v2}, Lcom/google/android/gms/internal/measurement/ٴʿ;->ʾˋ(ILcom/google/android/gms/internal/measurement/ˊﾞ;)V

    goto :goto_d

    :cond_18
    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v2

    invoke-virtual {v2}, Lﹶﾞ/ﹳـ;->ʼᵢ()Lﹶﾞ/ʼˈ;

    move-result-object v2

    const-string v3, "Did not find conversion parameter. appId"

    iget-object v4, v9, Lʾⁱ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʼᐧ()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_19
    :goto_d
    if-eqz v30, :cond_1e

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ˆʾ()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v8, -0x1

    :goto_e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const-string v11, "currency"

    const-string v14, "value"

    if-ge v3, v10, :cond_1c

    :try_start_8
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/ˊﾞ;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/ˊﾞ;->ᵔﹳ()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a

    move v4, v3

    goto :goto_f

    :cond_1a
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/ˊﾞ;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/ˊﾞ;->ᵔﹳ()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b

    move v8, v3

    :cond_1b
    :goto_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_1c
    const/4 v3, -0x1

    if-ne v4, v3, :cond_1d

    goto/16 :goto_12

    :cond_1d
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/ˊﾞ;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ˊﾞ;->ˏי()Z

    move-result v3

    if-nez v3, :cond_1f

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/ˊﾞ;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ˊﾞ;->ʾᵎ()Z

    move-result v3

    if-nez v3, :cond_1f

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v2

    iget-object v2, v2, Lﹶﾞ/ﹳـ;->ᵎˊ:Lﹶﾞ/ʼˈ;

    const-string v3, "Value must be specified with a numeric type."

    invoke-virtual {v2, v3}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ʼᐧ(I)V

    invoke-static {v12, v5}, Lﹶﾞ/ᵢי;->ʽʽ(Lcom/google/android/gms/internal/measurement/ᵔⁱ;Ljava/lang/String;)V

    const/16 v2, 0x12

    invoke-static {v12, v2, v14}, Lﹶﾞ/ᵢי;->ᴵˊ(Lcom/google/android/gms/internal/measurement/ᵔⁱ;ILjava/lang/String;)V

    :cond_1e
    const/4 v3, -0x1

    goto :goto_12

    :cond_1f
    const/4 v3, -0x1

    if-ne v8, v3, :cond_20

    goto :goto_11

    :cond_20
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ˊﾞ;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ˊﾞ;->יـ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v10, 0x3

    if-ne v8, v10, :cond_21

    const/4 v8, 0x0

    :goto_10
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v8, v10, :cond_22

    invoke-virtual {v2, v8}, Ljava/lang/String;->codePointAt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isLetter(I)Z

    move-result v14

    if-eqz v14, :cond_21

    invoke-static {v10}, Ljava/lang/Character;->charCount(I)I

    move-result v10

    add-int/2addr v8, v10

    goto :goto_10

    :cond_21
    :goto_11
    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v2

    iget-object v2, v2, Lﹶﾞ/ﹳـ;->ᵎˊ:Lﹶﾞ/ʼˈ;

    const-string v8, "Value parameter discarded. You must also supply a 3-letter ISO_4217 currency code in the currency parameter."

    invoke-virtual {v2, v8}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ʼᐧ(I)V

    invoke-static {v12, v5}, Lﹶﾞ/ᵢי;->ʽʽ(Lcom/google/android/gms/internal/measurement/ᵔⁱ;Ljava/lang/String;)V

    const/16 v2, 0x13

    invoke-static {v12, v2, v11}, Lﹶﾞ/ᵢי;->ᴵˊ(Lcom/google/android/gms/internal/measurement/ᵔⁱ;ILjava/lang/String;)V

    :cond_22
    :goto_12
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ᵔﹳ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-wide/16 v4, 0x3e8

    if-eqz v2, :cond_26

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹶᐧ()Lﹶﾞ/ʿ;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ٴʿ;

    invoke-static {v2, v7}, Lﹶﾞ/ʿ;->ˎʾ(Lcom/google/android/gms/internal/measurement/ٴʿ;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ˊﾞ;

    move-result-object v2

    if-nez v2, :cond_24

    if-eqz v19, :cond_23

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->יـ()J

    move-result-wide v6

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->יـ()J

    move-result-wide v10

    sub-long/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    cmp-long v2, v6, v4

    if-gtz v2, :cond_23

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ˈ()Lcom/google/android/gms/internal/measurement/ﹳᴵ;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ᵔⁱ;

    invoke-virtual {v1, v12, v2}, Lﹶﾞ/ᵢי;->ᵎⁱ(Lcom/google/android/gms/internal/measurement/ᵔⁱ;Lcom/google/android/gms/internal/measurement/ᵔⁱ;)Z

    move-result v4

    if-eqz v4, :cond_23

    move-object/from16 v10, v33

    invoke-virtual {v10, v13, v2}, Lcom/google/android/gms/internal/measurement/ʽʾ;->ᵎᵔ(ILcom/google/android/gms/internal/measurement/ᵔⁱ;)V

    move/from16 v11, v29

    :goto_13
    const/16 v18, 0x0

    const/16 v19, 0x0

    goto/16 :goto_16

    :cond_23
    move-object/from16 v10, v33

    move-object/from16 v18, v12

    move/from16 v11, v22

    goto/16 :goto_16

    :cond_24
    move-object/from16 v10, v33

    :cond_25
    move/from16 v4, v29

    goto/16 :goto_15

    :cond_26
    move-object/from16 v10, v33

    const-string v2, "_vs"

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ᵔﹳ()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹶᐧ()Lﹶﾞ/ʿ;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ٴʿ;

    invoke-static {v2, v6}, Lﹶﾞ/ʿ;->ˎʾ(Lcom/google/android/gms/internal/measurement/ٴʿ;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ˊﾞ;

    move-result-object v2

    if-nez v2, :cond_25

    if-eqz v18, :cond_27

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->יـ()J

    move-result-wide v6

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->יـ()J

    move-result-wide v14

    sub-long/2addr v6, v14

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    cmp-long v2, v6, v4

    if-gtz v2, :cond_27

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ˈ()Lcom/google/android/gms/internal/measurement/ﹳᴵ;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ᵔⁱ;

    invoke-virtual {v1, v2, v12}, Lﹶﾞ/ᵢי;->ᵎⁱ(Lcom/google/android/gms/internal/measurement/ᵔⁱ;Lcom/google/android/gms/internal/measurement/ᵔⁱ;)Z

    move-result v4

    if-eqz v4, :cond_27

    move/from16 v4, v29

    invoke-virtual {v10, v4, v2}, Lcom/google/android/gms/internal/measurement/ʽʾ;->ᵎᵔ(ILcom/google/android/gms/internal/measurement/ᵔⁱ;)V

    move v11, v4

    goto :goto_13

    :cond_27
    move/from16 v4, v29

    move v11, v4

    move-object/from16 v19, v12

    move/from16 v13, v22

    goto :goto_16

    :cond_28
    move/from16 v4, v29

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᴵʼ()Lﹶﾞ/ᵎﹶ;

    move-result-object v2

    sget-object v5, Lﹶﾞ/ᴵᵔ;->ˆˑ:Lﹶﾞ/ˈٴ;

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v5}, Lﹶﾞ/ᵎﹶ;->ˎˉ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ᵔﹳ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const-string v5, "_v"

    if-nez v2, :cond_29

    :try_start_9
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ᵔﹳ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    :cond_29
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ᵔﹳ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ᵔﹳ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    :cond_2a
    const/4 v2, 0x0

    :goto_14
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ٴﹶ()I

    move-result v5

    if-ge v2, v5, :cond_2c

    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ﾞʻ(I)Lcom/google/android/gms/internal/measurement/ˊﾞ;

    move-result-object v5

    const-string v6, "_elt"

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ˊﾞ;->ᵔﹳ()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ˊﾞ;->ʽﹳ()J

    move-result-wide v5

    invoke-virtual {v12, v5, v6}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ʽﹳ(J)V

    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ʼᐧ(I)V

    goto :goto_15

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_2c
    :goto_15
    move v11, v4

    :goto_16
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ٴﹶ()I

    move-result v2

    if-eqz v2, :cond_34

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹶᐧ()Lﹶﾞ/ʿ;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ˆʾ()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lﹶﾞ/ʿ;->ˈـ(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v2

    const/4 v4, 0x0

    :goto_17
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ٴﹶ()I

    move-result v5

    if-ge v4, v5, :cond_31

    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ﾞʻ(I)Lcom/google/android/gms/internal/measurement/ˊﾞ;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ˊﾞ;->ᵔﹳ()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v7, v27

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2f

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ˊﾞ;->ᵢˏ()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2f

    iget-object v6, v9, Lʾⁱ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʼᐧ()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ˊﾞ;->ᵢˏ()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Landroid/os/Bundle;

    const/4 v14, 0x0

    :goto_18
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_2e

    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/internal/measurement/ˊﾞ;

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹶᐧ()Lﹶﾞ/ʿ;

    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/ˊﾞ;->ᵢˏ()Ljava/util/List;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lﹶﾞ/ʿ;->ˈـ(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/ˊﾞ;->ᵢˏ()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_19
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_2d

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/google/android/gms/internal/measurement/ˊﾞ;

    move/from16 v25, v4

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ᵔﹳ()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ʼˎ()Lcom/google/android/gms/internal/measurement/ﹳᴵ;

    move-result-object v24

    move-object/from16 v27, v5

    move-object/from16 v5, v24

    check-cast v5, Lcom/google/android/gms/internal/measurement/ˊˊ;

    invoke-virtual {v1, v4, v5, v3, v6}, Lﹶﾞ/ᵢי;->ʽﹳ(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/ˊˊ;Landroid/os/Bundle;Ljava/lang/String;)V

    move/from16 v4, v25

    move-object/from16 v5, v27

    goto :goto_19

    :cond_2d
    move/from16 v25, v4

    move-object/from16 v27, v5

    aput-object v3, v8, v14

    add-int/lit8 v14, v14, 0x1

    move/from16 v4, v25

    move-object/from16 v5, v27

    const/4 v3, -0x1

    goto :goto_18

    :cond_2e
    move/from16 v25, v4

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_1a

    :cond_2f
    move/from16 v25, v4

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ˊﾞ;->ᵔﹳ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ᵔﹳ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ʼˎ()Lcom/google/android/gms/internal/measurement/ﹳᴵ;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/ˊˊ;

    iget-object v5, v9, Lʾⁱ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʼᐧ()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v2, v5}, Lﹶﾞ/ᵢי;->ʽﹳ(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/ˊˊ;Landroid/os/Bundle;Ljava/lang/String;)V

    :cond_30
    :goto_1a
    add-int/lit8 v4, v25, 0x1

    move-object/from16 v27, v7

    const/4 v3, -0x1

    goto/16 :goto_17

    :cond_31
    move-object/from16 v7, v27

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v3, v12, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v3, Lcom/google/android/gms/internal/measurement/ٴʿ;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ٴʿ;->ˈٴ()V

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹶᐧ()Lﹶﾞ/ʿ;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_32
    :goto_1b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_33

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/ˊﾞ;->ᴵˊ()Lcom/google/android/gms/internal/measurement/ˊˊ;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/measurement/ˊˊ;->ˆʾ(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_32

    invoke-virtual {v3, v8, v6}, Lﹶﾞ/ʿ;->ᵢʻ(Lcom/google/android/gms/internal/measurement/ˊˊ;Ljava/lang/Object;)V

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/ˊﾞ;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_33
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v2, :cond_35

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Lcom/google/android/gms/internal/measurement/ˊﾞ;

    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ˉʿ(Lcom/google/android/gms/internal/measurement/ˊﾞ;)V

    goto :goto_1c

    :cond_34
    move-object/from16 v7, v27

    :cond_35
    iget-object v2, v9, Lʾⁱ/ˈ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/ٴʿ;

    move/from16 v4, v26

    invoke-virtual {v2, v4, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10, v12}, Lcom/google/android/gms/internal/measurement/ʽʾ;->ᐧﾞ(Lcom/google/android/gms/internal/measurement/ᵔⁱ;)V

    add-int/lit8 v15, v22, 0x1

    :goto_1d
    add-int/lit8 v14, v4, 0x1

    move-object v5, v7

    move-object/from16 v8, v23

    move-object/from16 v2, v28

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    const-wide/16 v6, 0x1

    goto/16 :goto_0

    :cond_36
    const/16 v25, 0x1

    const-wide/16 v2, 0x0

    move-wide v11, v2

    move/from16 v4, v22

    const/4 v0, 0x0

    :goto_1e
    if-ge v0, v4, :cond_3a

    iget-object v5, v10, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v5, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ﾞי(I)Lcom/google/android/gms/internal/measurement/ٴʿ;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ٴʿ;->יـ()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_37

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹶᐧ()Lﹶﾞ/ʿ;

    invoke-static {v5, v7}, Lﹶﾞ/ʿ;->ˎʾ(Lcom/google/android/gms/internal/measurement/ٴʿ;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ˊﾞ;

    move-result-object v8

    if-eqz v8, :cond_37

    invoke-virtual {v10, v0}, Lcom/google/android/gms/internal/measurement/ʽʾ;->ᐧᴵ(I)V

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_20

    :cond_37
    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹶᐧ()Lﹶﾞ/ʿ;

    invoke-static {v5, v6}, Lﹶﾞ/ʿ;->ˎʾ(Lcom/google/android/gms/internal/measurement/ٴʿ;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ˊﾞ;

    move-result-object v5

    if-eqz v5, :cond_39

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ˊﾞ;->ˏי()Z

    move-result v8

    if-eqz v8, :cond_38

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ˊﾞ;->ʽﹳ()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_1f

    :cond_38
    const/4 v5, 0x0

    :goto_1f
    if-eqz v5, :cond_39

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    cmp-long v8, v13, v2

    if-lez v8, :cond_39

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    add-long/2addr v11, v13

    :cond_39
    :goto_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_3a
    const/4 v4, 0x0

    invoke-virtual {v1, v10, v11, v12, v4}, Lﹶﾞ/ᵢי;->ˉٴ(Lcom/google/android/gms/internal/measurement/ʽʾ;JZ)V

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/ʽʾ;->ʿ()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const-string v5, "_se"

    if-eqz v4, :cond_3c

    :try_start_a
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/ٴʿ;

    const-string v6, "_s"

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ٴʿ;->יـ()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ˊᵔ()Lﹶﾞ/ˉʿ;

    move-result-object v0

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/ʽʾ;->יـ()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v5}, Lﹶﾞ/ˉʿ;->ˎᵎ(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3c
    const-string v0, "_sid"

    invoke-static {v10, v0}, Lﹶﾞ/ʿ;->ˏʻ(Lcom/google/android/gms/internal/measurement/ʽʾ;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3d

    move/from16 v4, v25

    invoke-virtual {v1, v10, v11, v12, v4}, Lﹶﾞ/ᵢי;->ˉٴ(Lcom/google/android/gms/internal/measurement/ʽʾ;JZ)V

    goto :goto_21

    :cond_3d
    invoke-static {v10, v5}, Lﹶﾞ/ʿ;->ˏʻ(Lcom/google/android/gms/internal/measurement/ʽʾ;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3e

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v4, v10, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v4, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ᴵʼ(I)V

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v0

    invoke-virtual {v0}, Lﹶﾞ/ﹳـ;->ʼᵢ()Lﹶﾞ/ʼˈ;

    move-result-object v0

    const-string v4, "Session engagement user property is in the bundle without session ID. appId"

    iget-object v5, v9, Lʾⁱ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʼᐧ()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3e
    :goto_21
    iget-object v0, v9, Lʾⁱ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʼᐧ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v4

    invoke-virtual {v4}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ʻˋ()V

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ˊᵔ()Lﹶﾞ/ˉʿ;

    move-result-object v4

    invoke-virtual {v4, v0}, Lﹶﾞ/ˉʿ;->ᵢﹳ(Ljava/lang/String;)Lﹶﾞ/ʿᵢ;

    move-result-object v4

    if-nez v4, :cond_3f

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v4

    invoke-virtual {v4}, Lﹶﾞ/ﹳـ;->ʼᵢ()Lﹶﾞ/ʼˈ;

    move-result-object v4

    const-string v5, "Cannot fix consent fields without appInfo. appId"

    invoke-static {v0}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v0

    invoke-virtual {v4, v0, v5}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_22

    :cond_3f
    invoke-virtual {v1, v4, v10}, Lﹶﾞ/ᵢי;->ʼˎ(Lﹶﾞ/ʿᵢ;Lcom/google/android/gms/internal/measurement/ʽʾ;)V

    :goto_22
    iget-object v0, v9, Lʾⁱ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʼᐧ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v4

    invoke-virtual {v4}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ʻˋ()V

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ˊᵔ()Lﹶﾞ/ˉʿ;

    move-result-object v4

    invoke-virtual {v4, v0}, Lﹶﾞ/ˉʿ;->ᵢﹳ(Ljava/lang/String;)Lﹶﾞ/ʿᵢ;

    move-result-object v4

    if-nez v4, :cond_40

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v4

    invoke-virtual {v4}, Lﹶﾞ/ﹳـ;->יˉ()Lﹶﾞ/ʼˈ;

    move-result-object v4

    const-string v5, "Cannot populate ad_campaign_info without appInfo. appId"

    invoke-static {v0}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v0

    invoke-virtual {v4, v0, v5}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_23

    :cond_40
    invoke-virtual {v1, v4, v10}, Lﹶﾞ/ᵢי;->ˆʾ(Lﹶﾞ/ʿᵢ;Lcom/google/android/gms/internal/measurement/ʽʾ;)V

    :goto_23
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v0, v10, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ˆˑ;

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ـﹶ(J)V

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v0, v10, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ˆˑ;

    const-wide/high16 v4, -0x8000000000000000L

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ˈˏ(J)V

    const/4 v4, 0x0

    :goto_24
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/ʽʾ;->ʿᵢ()I

    move-result v0

    if-ge v4, v0, :cond_43

    iget-object v0, v10, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ﾞי(I)Lcom/google/android/gms/internal/measurement/ٴʿ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ٴʿ;->ʽﹳ()J

    move-result-wide v5

    iget-object v7, v10, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v7, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʼˋ()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_41

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ٴʿ;->ʽﹳ()J

    move-result-wide v5

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v7, v10, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v7, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v7, v5, v6}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ـﹶ(J)V

    :cond_41
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ٴʿ;->ʽﹳ()J

    move-result-wide v5

    iget-object v7, v10, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v7, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ᵔᴵ()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_42

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ٴʿ;->ʽﹳ()J

    move-result-wide v5

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v0, v10, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ˈˏ(J)V

    :cond_42
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    :cond_43
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/ʽʾ;->ˋᵔ()V

    sget-object v0, Lﹶﾞ/ᐧˎ;->ʽ:Lﹶﾞ/ᐧˎ;

    iget-object v0, v9, Lʾⁱ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʼᐧ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lﹶﾞ/ᵢי;->ﹳٴ(Ljava/lang/String;)Lﹶﾞ/ᐧˎ;

    move-result-object v0

    iget-object v4, v9, Lʾⁱ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ˑ()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x64

    invoke-static {v5, v4}, Lﹶﾞ/ᐧˎ;->ʽ(ILjava/lang/String;)Lﹶﾞ/ᐧˎ;

    move-result-object v4

    invoke-virtual {v0, v4}, Lﹶﾞ/ᐧˎ;->ˆʾ(Lﹶﾞ/ᐧˎ;)Lﹶﾞ/ᐧˎ;

    move-result-object v0

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ˊᵔ()Lﹶﾞ/ˉʿ;

    move-result-object v4

    iget-object v5, v9, Lʾⁱ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʼᐧ()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lﹶﾞ/ˉʿ;->ᵢᐧ(Ljava/lang/String;)Lﹶﾞ/ᐧˎ;

    move-result-object v4

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ˊᵔ()Lﹶﾞ/ˉʿ;

    move-result-object v5

    iget-object v6, v9, Lʾⁱ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʼᐧ()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Lﹶﾞ/ˉʿ;->ʻʼ(Ljava/lang/String;Lﹶﾞ/ᐧˎ;)V

    sget-object v5, Lﹶﾞ/ⁱˉ;->ʽʽ:Lﹶﾞ/ⁱˉ;

    invoke-virtual {v0, v5}, Lﹶﾞ/ᐧˎ;->ʼˎ(Lﹶﾞ/ⁱˉ;)Z

    move-result v6

    if-nez v6, :cond_44

    invoke-virtual {v4, v5}, Lﹶﾞ/ᐧˎ;->ʼˎ(Lﹶﾞ/ⁱˉ;)Z

    move-result v6

    if-eqz v6, :cond_44

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ˊᵔ()Lﹶﾞ/ˉʿ;

    move-result-object v4

    iget-object v6, v9, Lʾⁱ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʼᐧ()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lﹶﾞ/ˉʿ;->ʽᐧ(Ljava/lang/String;)V

    goto :goto_25

    :cond_44
    invoke-virtual {v0, v5}, Lﹶﾞ/ᐧˎ;->ʼˎ(Lﹶﾞ/ⁱˉ;)Z

    move-result v6

    if-eqz v6, :cond_45

    invoke-virtual {v4, v5}, Lﹶﾞ/ᐧˎ;->ʼˎ(Lﹶﾞ/ⁱˉ;)Z

    move-result v4

    if-nez v4, :cond_45

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ˊᵔ()Lﹶﾞ/ˉʿ;

    move-result-object v4

    iget-object v6, v9, Lʾⁱ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʼᐧ()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lﹶﾞ/ˉʿ;->ⁱʾ(Ljava/lang/String;)V

    :cond_45
    :goto_25
    sget-object v4, Lﹶﾞ/ⁱˉ;->ᴵˊ:Lﹶﾞ/ⁱˉ;

    invoke-virtual {v0, v4}, Lﹶﾞ/ᐧˎ;->ʼˎ(Lﹶﾞ/ⁱˉ;)Z

    move-result v6

    if-nez v6, :cond_46

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v6, v10, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v6, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʻˆ()V

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v6, v10, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v6, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ˆˑ;->יⁱ()V

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v6, v10, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v6, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ﾞˋ()V

    :cond_46
    invoke-virtual {v0, v5}, Lﹶﾞ/ᐧˎ;->ʼˎ(Lﹶﾞ/ⁱˉ;)Z

    move-result v6

    if-nez v6, :cond_47

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v6, v10, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v6, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ⁱʾ()V

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v6, v10, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v6, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ˋـ()V

    :cond_47
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ˉˏ;->ﹳٴ()V

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᴵʼ()Lﹶﾞ/ᵎﹶ;

    move-result-object v6

    iget-object v7, v9, Lʾⁱ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v7, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʼᐧ()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lﹶﾞ/ᴵᵔ;->ʼᵢ:Lﹶﾞ/ˈٴ;

    invoke-virtual {v6, v7, v8}, Lﹶﾞ/ᵎﹶ;->ˎˉ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)Z

    move-result v6

    if-eqz v6, :cond_48

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹳﹳ()Lﹶﾞ/ᵢﹳ;

    iget-object v6, v9, Lʾⁱ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʼᐧ()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lﹶﾞ/ᵢﹳ;->ˆˑ(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_48

    iget-object v6, v9, Lʾⁱ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʼᐧ()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lﹶﾞ/ᵢי;->ﹳٴ(Ljava/lang/String;)Lﹶﾞ/ᐧˎ;

    move-result-object v6

    invoke-virtual {v6, v4}, Lﹶﾞ/ᐧˎ;->ʼˎ(Lﹶﾞ/ⁱˉ;)Z

    move-result v4

    if-eqz v4, :cond_48

    iget-object v4, v9, Lʾⁱ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʾﾞ()Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-virtual {v1, v10, v9}, Lﹶﾞ/ᵢי;->ˏי(Lcom/google/android/gms/internal/measurement/ʽʾ;Lʾⁱ/ˈ;)V

    :cond_48
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v4, v10, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v4, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʿˎ()V

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ˈˏ()Lﹶﾞ/ʽ;

    move-result-object v26

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/ʽʾ;->יـ()Ljava/lang/String;

    move-result-object v27

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/ʽʾ;->ʿ()Ljava/util/List;

    move-result-object v28

    iget-object v4, v10, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v4, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʼᵎ()Lcom/google/android/gms/internal/measurement/ʻˈ;

    move-result-object v4

    invoke-static {v4}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v29

    iget-object v4, v10, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v4, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʼˋ()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    iget-object v4, v10, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v4, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ᵔᴵ()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    invoke-virtual {v0, v5}, Lﹶﾞ/ᐧˎ;->ʼˎ(Lﹶﾞ/ⁱˉ;)Z

    move-result v0

    const/16 v25, 0x1

    xor-int/lit8 v32, v0, 0x1

    invoke-virtual/range {v26 .. v32}, Lﹶﾞ/ʽ;->ʼᵢ(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/google/android/gms/internal/measurement/ʽʾ;->ᵔٴ(Ljava/util/ArrayList;)V

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᴵʼ()Lﹶﾞ/ᵎﹶ;

    move-result-object v0

    iget-object v4, v9, Lʾⁱ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʼᐧ()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lﹶﾞ/ᵎﹶ;->ʽˑ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_61

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹳﹳ()Lﹶﾞ/ᵢﹳ;

    move-result-object v0

    invoke-virtual {v0}, Lﹶﾞ/ᵢﹳ;->ʿˎ()Ljava/security/SecureRandom;

    move-result-object v6

    const/4 v7, 0x0

    :goto_26
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/ʽʾ;->ʿᵢ()I

    move-result v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    const-string v8, "events"

    if-ge v7, v0, :cond_5f

    :try_start_b
    iget-object v0, v10, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ﾞי(I)Lcom/google/android/gms/internal/measurement/ٴʿ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ʼˎ()Lcom/google/android/gms/internal/measurement/ﹳᴵ;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/google/android/gms/internal/measurement/ᵔⁱ;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ᵔﹳ()Ljava/lang/String;

    move-result-object v0

    const-string v12, "_ep"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    const-string v12, "_efs"

    const-string v13, "_sr"

    if-eqz v0, :cond_4e

    :try_start_c
    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹶᐧ()Lﹶﾞ/ʿ;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ٴʿ;

    const-string v14, "_en"

    invoke-static {v0, v14}, Lﹶﾞ/ʿ;->ˑˆ(Lcom/google/android/gms/internal/measurement/ٴʿ;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lﹶﾞ/ᵔﹳ;

    if-nez v14, :cond_49

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ˊᵔ()Lﹶﾞ/ˉʿ;

    move-result-object v14

    iget-object v15, v9, Lʾⁱ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v15, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʼᐧ()Ljava/lang/String;

    move-result-object v15

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    invoke-virtual {v14, v8, v15, v0}, Lﹶﾞ/ˉʿ;->ˆˑ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lﹶﾞ/ᵔﹳ;

    move-result-object v14

    if-eqz v14, :cond_49

    invoke-virtual {v4, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_49
    if-eqz v14, :cond_4d

    iget-object v0, v14, Lﹶﾞ/ᵔﹳ;->ʼˎ:Ljava/lang/Long;

    if-nez v0, :cond_4d

    iget-object v0, v14, Lﹶﾞ/ᵔﹳ;->ˆʾ:Ljava/lang/Long;

    if-eqz v0, :cond_4a

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    const-wide/16 v20, 0x1

    cmp-long v8, v15, v20

    if-lez v8, :cond_4b

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹶᐧ()Lﹶﾞ/ʿ;

    invoke-static {v11, v13, v0}, Lﹶﾞ/ʿ;->ﾞˋ(Lcom/google/android/gms/internal/measurement/ᵔⁱ;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_27

    :cond_4a
    const-wide/16 v20, 0x1

    :cond_4b
    :goto_27
    iget-object v0, v14, Lﹶﾞ/ᵔﹳ;->ٴﹶ:Ljava/lang/Boolean;

    if-eqz v0, :cond_4c

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹶᐧ()Lﹶﾞ/ʿ;

    move-object/from16 v14, v23

    invoke-static {v11, v12, v14}, Lﹶﾞ/ʿ;->ﾞˋ(Lcom/google/android/gms/internal/measurement/ᵔⁱ;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_28

    :cond_4c
    move-object/from16 v14, v23

    :goto_28
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ٴʿ;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_4d
    move-object/from16 v14, v23

    const-wide/16 v20, 0x1

    :goto_29
    invoke-virtual {v10, v7, v11}, Lcom/google/android/gms/internal/measurement/ʽʾ;->ᵎᵔ(ILcom/google/android/gms/internal/measurement/ᵔⁱ;)V

    move-wide/from16 v18, v2

    :goto_2a
    move-object v3, v4

    move-object v4, v14

    goto/16 :goto_33

    :cond_4e
    move-object/from16 v14, v23

    const-wide/16 v20, 0x1

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ʻᵎ()Lﹶﾞ/ـﹶ;

    move-result-object v15

    iget-object v0, v9, Lʾⁱ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ˆˑ;

    move-wide/from16 v18, v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʼᐧ()Ljava/lang/String;

    move-result-object v2

    const-string v0, "measurement.account.time_zone_offset_minutes"

    invoke-virtual {v15, v2, v0}, Lﹶﾞ/ـﹶ;->ʽ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-nez v3, :cond_4f

    :try_start_d
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_2b

    :catch_0
    move-exception v0

    :try_start_e
    iget-object v3, v15, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v3, Lﹶﾞ/ᵎʻ;

    invoke-virtual {v3}, Lﹶﾞ/ᵎʻ;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v3

    invoke-virtual {v3}, Lﹶﾞ/ﹳـ;->יˉ()Lﹶﾞ/ʼˈ;

    move-result-object v3

    const-string v15, "Unable to parse timezone offset. appId"

    invoke-static {v2}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v2

    invoke-virtual {v3, v2, v0, v15}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4f
    move-wide/from16 v2, v18

    :goto_2b
    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹳﹳ()Lﹶﾞ/ᵢﹳ;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->יـ()J

    move-result-wide v15

    const-wide/32 v22, 0xea60

    mul-long v2, v2, v22

    add-long/2addr v15, v2

    const-wide/32 v22, 0x5265c00

    div-long v15, v15, v22

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ٴʿ;

    const-string v1, "_dbg"

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_52

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ٴʿ;->ʼᐧ()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/google/android/gms/internal/measurement/ˊﾞ;

    move-wide/from16 v27, v2

    invoke-virtual/range {v26 .. v26}, Lcom/google/android/gms/internal/measurement/ˊﾞ;->ᵔﹳ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-virtual/range {v26 .. v26}, Lcom/google/android/gms/internal/measurement/ˊﾞ;->ʽﹳ()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    goto :goto_2d

    :cond_50
    const/4 v0, 0x1

    goto :goto_2e

    :cond_51
    move-wide/from16 v2, v27

    goto :goto_2c

    :cond_52
    move-wide/from16 v27, v2

    :goto_2d
    invoke-virtual/range {p0 .. p0}, Lﹶﾞ/ᵢי;->ʻᵎ()Lﹶﾞ/ـﹶ;

    move-result-object v0

    iget-object v1, v9, Lʾⁱ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʼᐧ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ᵔﹳ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lﹶﾞ/ـﹶ;->ﾞˏ(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_2e
    if-gtz v0, :cond_53

    invoke-virtual/range {p0 .. p0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v1

    invoke-virtual {v1}, Lﹶﾞ/ﹳـ;->יˉ()Lﹶﾞ/ʼˈ;

    move-result-object v1

    const-string v2, "Sample rate must be positive. event, rate"

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ᵔﹳ()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v0, v2}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ٴʿ;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10, v7, v11}, Lcom/google/android/gms/internal/measurement/ʽʾ;->ᵎᵔ(ILcom/google/android/gms/internal/measurement/ᵔⁱ;)V

    goto/16 :goto_2a

    :cond_53
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ᵔﹳ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lﹶﾞ/ᵔﹳ;

    if-nez v1, :cond_54

    invoke-virtual/range {p0 .. p0}, Lﹶﾞ/ᵢי;->ˊᵔ()Lﹶﾞ/ˉʿ;

    move-result-object v1

    iget-object v2, v9, Lʾⁱ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʼᐧ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ᵔﹳ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v8, v2, v3}, Lﹶﾞ/ˉʿ;->ˆˑ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lﹶﾞ/ᵔﹳ;

    move-result-object v1

    if-nez v1, :cond_54

    invoke-virtual/range {p0 .. p0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v1

    invoke-virtual {v1}, Lﹶﾞ/ﹳـ;->יˉ()Lﹶﾞ/ʼˈ;

    move-result-object v1

    const-string v2, "Event being bundled has no eventAggregate. appId, eventName"

    iget-object v3, v9, Lʾⁱ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʼᐧ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ᵔﹳ()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v3, v8, v2}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v29, Lﹶﾞ/ᵔﹳ;

    iget-object v1, v9, Lʾⁱ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʼᐧ()Ljava/lang/String;

    move-result-object v30

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ᵔﹳ()Ljava/lang/String;

    move-result-object v31

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->יـ()J

    move-result-wide v38

    const/16 v44, 0x0

    const/16 v45, 0x0

    const-wide/16 v32, 0x1

    const-wide/16 v34, 0x1

    const-wide/16 v36, 0x1

    const-wide/16 v40, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    invoke-direct/range {v29 .. v45}, Lﹶﾞ/ᵔﹳ;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    move-object/from16 v1, v29

    :cond_54
    invoke-virtual/range {p0 .. p0}, Lﹶﾞ/ᵢי;->ﹶᐧ()Lﹶﾞ/ʿ;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ٴʿ;

    const-string v3, "_eid"

    invoke-static {v2, v3}, Lﹶﾞ/ʿ;->ˑˆ(Lcom/google/android/gms/internal/measurement/ٴʿ;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_55

    const/16 v25, 0x1

    :goto_2f
    const/4 v3, 0x1

    goto :goto_30

    :cond_55
    const/16 v25, 0x0

    goto :goto_2f

    :goto_30
    if-ne v0, v3, :cond_58

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ٴʿ;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v25, :cond_57

    iget-object v0, v1, Lﹶﾞ/ᵔﹳ;->ʼˎ:Ljava/lang/Long;

    if-nez v0, :cond_56

    iget-object v0, v1, Lﹶﾞ/ᵔﹳ;->ˆʾ:Ljava/lang/Long;

    if-nez v0, :cond_56

    iget-object v0, v1, Lﹶﾞ/ᵔﹳ;->ٴﹶ:Ljava/lang/Boolean;

    if-eqz v0, :cond_57

    :cond_56
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2}, Lﹶﾞ/ᵔﹳ;->ⁱˊ(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lﹶﾞ/ᵔﹳ;

    move-result-object v0

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ᵔﹳ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_57
    invoke-virtual {v10, v7, v11}, Lcom/google/android/gms/internal/measurement/ʽʾ;->ᵎᵔ(ILcom/google/android/gms/internal/measurement/ᵔⁱ;)V

    goto/16 :goto_2a

    :cond_58
    invoke-virtual {v6, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    if-nez v8, :cond_5a

    invoke-virtual/range {p0 .. p0}, Lﹶﾞ/ᵢי;->ﹶᐧ()Lﹶﾞ/ʿ;

    move-object/from16 p3, v4

    int-to-long v3, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v11, v13, v0}, Lﹶﾞ/ʿ;->ﾞˋ(Lcom/google/android/gms/internal/measurement/ᵔⁱ;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ٴʿ;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v25, :cond_59

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, v2}, Lﹶﾞ/ᵔﹳ;->ⁱˊ(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lﹶﾞ/ᵔﹳ;

    move-result-object v1

    :cond_59
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ᵔﹳ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->יـ()J

    move-result-wide v38

    new-instance v27, Lﹶﾞ/ᵔﹳ;

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v40

    iget-object v2, v1, Lﹶﾞ/ᵔﹳ;->ʼˎ:Ljava/lang/Long;

    iget-object v3, v1, Lﹶﾞ/ᵔﹳ;->ˆʾ:Ljava/lang/Long;

    iget-object v4, v1, Lﹶﾞ/ᵔﹳ;->ٴﹶ:Ljava/lang/Boolean;

    iget-object v8, v1, Lﹶﾞ/ᵔﹳ;->ﹳٴ:Ljava/lang/String;

    iget-object v12, v1, Lﹶﾞ/ᵔﹳ;->ⁱˊ:Ljava/lang/String;

    move-object/from16 v41, v2

    move-object/from16 v42, v3

    iget-wide v2, v1, Lﹶﾞ/ᵔﹳ;->ʽ:J

    move-wide/from16 v30, v2

    iget-wide v2, v1, Lﹶﾞ/ᵔﹳ;->ˈ:J

    move-wide/from16 v32, v2

    iget-wide v2, v1, Lﹶﾞ/ᵔﹳ;->ˑﹳ:J

    move-wide/from16 v34, v2

    iget-wide v1, v1, Lﹶﾞ/ᵔﹳ;->ﾞᴵ:J

    move-wide/from16 v36, v1

    move-object/from16 v43, v4

    move-object/from16 v28, v8

    move-object/from16 v29, v12

    invoke-direct/range {v27 .. v43}, Lﹶﾞ/ᵔﹳ;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    move-object/from16 v1, v27

    move-object/from16 v3, p3

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v14

    goto/16 :goto_32

    :cond_5a
    move-object v3, v4

    iget-object v4, v1, Lﹶﾞ/ᵔﹳ;->ᵔᵢ:Ljava/lang/Long;

    if-eqz v4, :cond_5b

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    goto :goto_31

    :cond_5b
    invoke-virtual/range {p0 .. p0}, Lﹶﾞ/ᵢי;->ﹳﹳ()Lﹶﾞ/ᵢﹳ;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ˏי()J

    move-result-wide v29

    add-long v27, v27, v29

    div-long v22, v27, v22

    :goto_31
    cmp-long v4, v22, v15

    if-eqz v4, :cond_5d

    invoke-virtual/range {p0 .. p0}, Lﹶﾞ/ᵢי;->ﹶᐧ()Lﹶﾞ/ʿ;

    invoke-static {v11, v12, v14}, Lﹶﾞ/ʿ;->ﾞˋ(Lcom/google/android/gms/internal/measurement/ᵔⁱ;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual/range {p0 .. p0}, Lﹶﾞ/ᵢי;->ﹶᐧ()Lﹶﾞ/ʿ;

    move-object v4, v14

    move-wide/from16 v22, v15

    int-to-long v14, v0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v11, v13, v0}, Lﹶﾞ/ʿ;->ﾞˋ(Lcom/google/android/gms/internal/measurement/ᵔⁱ;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ٴʿ;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v25, :cond_5c

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v8, 0x0

    invoke-virtual {v1, v8, v0, v2}, Lﹶﾞ/ᵔﹳ;->ⁱˊ(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lﹶﾞ/ᵔﹳ;

    move-result-object v1

    :cond_5c
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ᵔﹳ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->יـ()J

    move-result-wide v38

    new-instance v27, Lﹶﾞ/ᵔﹳ;

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v40

    iget-object v2, v1, Lﹶﾞ/ᵔﹳ;->ʼˎ:Ljava/lang/Long;

    iget-object v8, v1, Lﹶﾞ/ᵔﹳ;->ˆʾ:Ljava/lang/Long;

    iget-object v12, v1, Lﹶﾞ/ᵔﹳ;->ٴﹶ:Ljava/lang/Boolean;

    iget-object v13, v1, Lﹶﾞ/ᵔﹳ;->ﹳٴ:Ljava/lang/String;

    iget-object v14, v1, Lﹶﾞ/ᵔﹳ;->ⁱˊ:Ljava/lang/String;

    move-object/from16 v43, v12

    move-object/from16 v28, v13

    iget-wide v12, v1, Lﹶﾞ/ᵔﹳ;->ʽ:J

    move-wide/from16 v30, v12

    iget-wide v12, v1, Lﹶﾞ/ᵔﹳ;->ˈ:J

    move-wide/from16 v32, v12

    iget-wide v12, v1, Lﹶﾞ/ᵔﹳ;->ˑﹳ:J

    move-object/from16 v41, v2

    iget-wide v1, v1, Lﹶﾞ/ᵔﹳ;->ﾞᴵ:J

    move-wide/from16 v36, v1

    move-object/from16 v42, v8

    move-wide/from16 v34, v12

    move-object/from16 v29, v14

    invoke-direct/range {v27 .. v43}, Lﹶﾞ/ᵔﹳ;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    move-object/from16 v1, v27

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_32

    :cond_5d
    move-object v4, v14

    if-eqz v25, :cond_5e

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ᵔﹳ()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8, v8}, Lﹶﾞ/ᵔﹳ;->ⁱˊ(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lﹶﾞ/ᵔﹳ;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5e
    :goto_32
    invoke-virtual {v10, v7, v11}, Lcom/google/android/gms/internal/measurement/ʽʾ;->ᵎᵔ(ILcom/google/android/gms/internal/measurement/ᵔⁱ;)V

    :goto_33
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p0

    move-object/from16 v23, v4

    move-object v4, v3

    move-wide/from16 v2, v18

    goto/16 :goto_26

    :cond_5f
    move-wide/from16 v18, v2

    move-object v3, v4

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/ʽʾ;->ʿᵢ()I

    move-result v1

    if-ge v0, v1, :cond_60

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v0, v10, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ᵎᵔ()V

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v0, v10, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʿᵢ(Ljava/lang/Iterable;)V

    :cond_60
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-virtual/range {p0 .. p0}, Lﹶﾞ/ᵢי;->ˊᵔ()Lﹶﾞ/ˉʿ;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lﹶﾞ/ᵔﹳ;

    invoke-virtual {v2, v8, v1}, Lﹶﾞ/ˉʿ;->ˎـ(Ljava/lang/String;Lﹶﾞ/ᵔﹳ;)V

    goto :goto_34

    :cond_61
    move-wide/from16 v18, v2

    :cond_62
    iget-object v0, v9, Lʾⁱ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʼᐧ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lﹶﾞ/ᵢי;->ˊᵔ()Lﹶﾞ/ˉʿ;

    move-result-object v0

    invoke-virtual {v0, v1}, Lﹶﾞ/ˉʿ;->ᵢﹳ(Ljava/lang/String;)Lﹶﾞ/ʿᵢ;

    move-result-object v0

    if-nez v0, :cond_64

    invoke-virtual/range {p0 .. p0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v0

    invoke-virtual {v0}, Lﹶﾞ/ﹳـ;->ʼᵢ()Lﹶﾞ/ʼˈ;

    move-result-object v0

    const-string v2, "Bundling raw events w/o app info. appId"

    iget-object v3, v9, Lʾⁱ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʼᐧ()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_63
    const/4 v4, 0x0

    goto/16 :goto_39

    :cond_64
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/ʽʾ;->ʿᵢ()I

    move-result v2

    if-lez v2, :cond_63

    iget-object v2, v0, Lﹶﾞ/ʿᵢ;->ﹳٴ:Lﹶﾞ/ᵎʻ;

    iget-object v2, v2, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    invoke-virtual {v2}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    iget-wide v2, v0, Lﹶﾞ/ʿᵢ;->ʼˎ:J

    cmp-long v4, v2, v18

    if-eqz v4, :cond_65

    invoke-virtual {v10, v2, v3}, Lcom/google/android/gms/internal/measurement/ʽʾ;->ˆʾ(J)V

    goto :goto_35

    :cond_65
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/ʽʾ;->ٴﹶ()V

    :goto_35
    iget-object v4, v0, Lﹶﾞ/ʿᵢ;->ﹳٴ:Lﹶﾞ/ᵎʻ;

    iget-object v4, v4, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v4}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    invoke-virtual {v4}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    iget-wide v4, v0, Lﹶﾞ/ʿᵢ;->ᵔᵢ:J

    cmp-long v6, v4, v18

    if-nez v6, :cond_66

    goto :goto_36

    :cond_66
    move-wide v2, v4

    :goto_36
    cmp-long v4, v2, v18

    if-eqz v4, :cond_67

    invoke-virtual {v10, v2, v3}, Lcom/google/android/gms/internal/measurement/ʽʾ;->ʻᵎ(J)V

    goto :goto_37

    :cond_67
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/ʽʾ;->ˊᵔ()V

    :goto_37
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/ʽʾ;->ʿᵢ()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lﹶﾞ/ʿᵢ;->ᵔᵢ(J)V

    iget-object v2, v0, Lﹶﾞ/ʿᵢ;->ﹳٴ:Lﹶﾞ/ᵎʻ;

    iget-object v2, v2, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    invoke-virtual {v2}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    iget-wide v2, v0, Lﹶﾞ/ʿᵢ;->ˊʻ:J

    long-to-int v2, v2

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v3, v10, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v3, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʽʾ(I)V

    iget-object v2, v0, Lﹶﾞ/ʿᵢ;->ﹳٴ:Lﹶﾞ/ᵎʻ;

    iget-object v2, v2, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    invoke-virtual {v2}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    iget-wide v2, v0, Lﹶﾞ/ʿᵢ;->ᵎﹶ:J

    long-to-int v2, v2

    invoke-virtual {v10, v2}, Lcom/google/android/gms/internal/measurement/ʽʾ;->ᴵˊ(I)V

    iget-object v2, v10, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v2, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʼˋ()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lﹶﾞ/ʿᵢ;->ᵔי(J)V

    iget-object v2, v10, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v2, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ᵔᴵ()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lﹶﾞ/ʿᵢ;->ˆﾞ(J)V

    invoke-virtual {v0}, Lﹶﾞ/ʿᵢ;->ʽﹳ()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_68

    invoke-virtual {v10, v2}, Lcom/google/android/gms/internal/measurement/ʽʾ;->ٴʼ(Ljava/lang/String;)V

    goto :goto_38

    :cond_68
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/ʽʾ;->ᵎˊ()V

    :goto_38
    invoke-virtual/range {p0 .. p0}, Lﹶﾞ/ᵢי;->ˊᵔ()Lﹶﾞ/ˉʿ;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Lﹶﾞ/ˉʿ;->ᐧⁱ(Lﹶﾞ/ʿᵢ;Z)V

    :goto_39
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/ʽʾ;->ʿᵢ()I

    move-result v0

    if-lez v0, :cond_6c

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p0 .. p0}, Lﹶﾞ/ᵢי;->ʻᵎ()Lﹶﾞ/ـﹶ;

    move-result-object v0

    iget-object v2, v9, Lʾⁱ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʼᐧ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lﹶﾞ/ـﹶ;->ᵢˋ(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ﹳⁱ;

    move-result-object v0

    if-eqz v0, :cond_6a

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ﹳⁱ;->ʼᐧ()Z

    move-result v2

    if-nez v2, :cond_69

    goto :goto_3a

    :cond_69
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ﹳⁱ;->ᵔﹳ()J

    move-result-wide v2

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v0, v10, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʼᵢ(J)V

    goto :goto_3b

    :cond_6a
    :goto_3a
    iget-object v0, v9, Lʾⁱ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ᴵᵔ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v0, v10, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ˆˑ;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʼᵢ(J)V

    goto :goto_3b

    :cond_6b
    invoke-virtual/range {p0 .. p0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v0

    invoke-virtual {v0}, Lﹶﾞ/ﹳـ;->יˉ()Lﹶﾞ/ʼˈ;

    move-result-object v0

    const-string v2, "Did not find measurement config or missing version info. appId"

    iget-object v3, v9, Lʾⁱ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʼᐧ()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_3b
    invoke-virtual/range {p0 .. p0}, Lﹶﾞ/ᵢי;->ˊᵔ()Lﹶﾞ/ˉʿ;

    move-result-object v0

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ˆˑ;

    move/from16 v11, v17

    invoke-virtual {v0, v2, v11}, Lﹶﾞ/ˉʿ;->ﾞי(Lcom/google/android/gms/internal/measurement/ˆˑ;Z)V

    :cond_6c
    invoke-virtual/range {p0 .. p0}, Lﹶﾞ/ᵢי;->ˊᵔ()Lﹶﾞ/ˉʿ;

    move-result-object v0

    iget-object v2, v9, Lʾⁱ/ˈ;->ˈٴ:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-static {v2}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    invoke-virtual {v0}, Lﹶﾞ/ˎᵎ;->ﹶˎ()V

    const-string v3, "rowid in ("

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v11, v4

    :goto_3c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v11, v3, :cond_6e

    if-eqz v11, :cond_6d

    const-string v3, ","

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6d
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    goto :goto_3c

    :cond_6e
    const-string v3, ")"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lﹶﾞ/ˉʿ;->יⁱ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "raw_events"

    const/4 v8, 0x0

    invoke-virtual {v3, v5, v4, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v3, v4, :cond_6f

    iget-object v0, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    invoke-virtual {v0}, Lﹶﾞ/ᵎʻ;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v0

    invoke-virtual {v0}, Lﹶﾞ/ﹳـ;->ʼᵢ()Lﹶﾞ/ʼˈ;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "Deleted fewer rows from raw events table than expected"

    invoke-virtual {v0, v3, v2, v4}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6f
    invoke-virtual/range {p0 .. p0}, Lﹶﾞ/ᵢי;->ˊᵔ()Lﹶﾞ/ˉʿ;

    move-result-object v2

    invoke-virtual {v2}, Lﹶﾞ/ˉʿ;->יⁱ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :try_start_f
    const-string v3, "delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)"

    filled-new-array {v1, v1}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_3d

    :catch_1
    move-exception v0

    :try_start_10
    iget-object v2, v2, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v2, Lﹶﾞ/ᵎʻ;

    invoke-virtual {v2}, Lﹶﾞ/ᵎʻ;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v2

    invoke-virtual {v2}, Lﹶﾞ/ﹳـ;->ʼᵢ()Lﹶﾞ/ʼˈ;

    move-result-object v2

    const-string v3, "Failed to remove unused event metadata. appId"

    invoke-static {v1}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v1

    invoke-virtual {v2, v1, v0, v3}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_3d
    invoke-virtual/range {p0 .. p0}, Lﹶﾞ/ᵢי;->ˊᵔ()Lﹶﾞ/ˉʿ;

    move-result-object v0

    invoke-virtual {v0}, Lﹶﾞ/ˉʿ;->ʻˆ()V

    const/4 v11, 0x1

    goto :goto_3f

    :goto_3e
    invoke-virtual/range {p0 .. p0}, Lﹶﾞ/ᵢי;->ˊᵔ()Lﹶﾞ/ˉʿ;

    move-result-object v0

    invoke-virtual {v0}, Lﹶﾞ/ˉʿ;->ʻˆ()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    move v11, v4

    :goto_3f
    invoke-virtual/range {p0 .. p0}, Lﹶﾞ/ᵢי;->ˊᵔ()Lﹶﾞ/ˉʿ;

    move-result-object v0

    invoke-virtual {v0}, Lﹶﾞ/ˉʿ;->ˏʻ()V

    return v11

    :goto_40
    invoke-virtual/range {p0 .. p0}, Lﹶﾞ/ᵢי;->ˊᵔ()Lﹶﾞ/ˉʿ;

    move-result-object v1

    invoke-virtual {v1}, Lﹶﾞ/ˉʿ;->ˏʻ()V

    throw v0
.end method

.method public final ٴﹳ(Lﹶﾞ/ʻᐧ;)V
    .locals 9

    .prologue
    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v0

    invoke-virtual {v0}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ʻˋ()V

    iget-object v4, p1, Lﹶﾞ/ʻᐧ;->ʾˋ:Ljava/lang/String;

    invoke-static {v4}, Lٴﾞ/ʻٴ;->ʽ(Ljava/lang/String;)V

    iget-object p1, p1, Lﹶﾞ/ʻᐧ;->ʿ:Ljava/lang/String;

    invoke-static {p1}, Lﹶﾞ/ˉˆ;->ⁱˊ(Ljava/lang/String;)Lﹶﾞ/ˉˆ;

    move-result-object p1

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v0

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v1, "Setting DMA consent for package"

    invoke-virtual {v0, v4, p1, v1}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v0

    invoke-virtual {v0}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ʻˋ()V

    invoke-virtual {p0, v4}, Lﹶﾞ/ᵢי;->ـᵎ(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const/16 v1, 0x64

    invoke-static {v1, v0}, Lﹶﾞ/ˉˆ;->ʽ(ILandroid/os/Bundle;)Lﹶﾞ/ˉˆ;

    move-result-object v0

    invoke-virtual {v0}, Lﹶﾞ/ˉˆ;->ﹳٴ()Lﹶﾞ/ʽⁱ;

    move-result-object v0

    iget-object v2, p0, Lﹶﾞ/ᵢי;->ᐧᴵ:Ljava/util/HashMap;

    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v2}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-static {v4}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    invoke-static {p1}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    invoke-virtual {v2}, Lﹶﾞ/ˎᵎ;->ﹶˎ()V

    invoke-virtual {v2, v4}, Lﹶﾞ/ˉʿ;->ˊﾞ(Ljava/lang/String;)Lﹶﾞ/ᐧˎ;

    move-result-object v3

    sget-object v5, Lﹶﾞ/ᐧˎ;->ʽ:Lﹶﾞ/ᐧˎ;

    if-ne v3, v5, :cond_0

    invoke-virtual {v2, v4, v5}, Lﹶﾞ/ˉʿ;->ˏⁱ(Ljava/lang/String;Lﹶﾞ/ᐧˎ;)V

    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "app_id"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p1, Lﹶﾞ/ˉˆ;->ⁱˊ:Ljava/lang/String;

    const-string v5, "dma_consent_settings"

    invoke-virtual {v3, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lﹶﾞ/ˉʿ;->ʽʾ(Landroid/content/ContentValues;)V

    invoke-virtual {p0, v4}, Lﹶﾞ/ᵢי;->ـᵎ(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {v1, p1}, Lﹶﾞ/ˉˆ;->ʽ(ILandroid/os/Bundle;)Lﹶﾞ/ˉˆ;

    move-result-object p1

    invoke-virtual {p1}, Lﹶﾞ/ˉˆ;->ﹳٴ()Lﹶﾞ/ʽⁱ;

    move-result-object p1

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v1

    invoke-virtual {v1}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ʻˋ()V

    const/4 v1, 0x1

    sget-object v2, Lﹶﾞ/ʽⁱ;->ᴵᵔ:Lﹶﾞ/ʽⁱ;

    const/4 v3, 0x0

    sget-object v5, Lﹶﾞ/ʽⁱ;->ˈٴ:Lﹶﾞ/ʽⁱ;

    if-ne v0, v5, :cond_1

    if-ne p1, v2, :cond_1

    move v6, v1

    goto :goto_0

    :cond_1
    move v6, v3

    :goto_0
    if-ne v0, v2, :cond_2

    if-ne p1, v5, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    if-nez v6, :cond_4

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    return-void

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object p1

    iget-object p1, p1, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v0, "Generated _dcu event for"

    invoke-virtual {p1, v4, v0}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v1}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ⁱˊ()J

    move-result-wide v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v8}, Lﹶﾞ/ˉʿ;->ʻᐧ(JLjava/lang/String;ZZZZ)Lﹶﾞ/ˆʾ;

    move-result-object v0

    iget-wide v0, v0, Lﹶﾞ/ˆʾ;->ﾞᴵ:J

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᴵʼ()Lﹶﾞ/ᵎﹶ;

    move-result-object v2

    sget-object v3, Lﹶﾞ/ᴵᵔ;->ٴﹳ:Lﹶﾞ/ˈٴ;

    invoke-virtual {v2, v4, v3}, Lﹶﾞ/ᵎﹶ;->ˎʾ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_5

    const-string v0, "_r"

    const-wide/16 v1, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v1, p0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v1}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ⁱˊ()J

    move-result-wide v2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v8}, Lﹶﾞ/ˉʿ;->ʻᐧ(JLjava/lang/String;ZZZZ)Lﹶﾞ/ˆʾ;

    move-result-object v0

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v1

    iget-object v1, v1, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    iget-wide v2, v0, Lﹶﾞ/ˆʾ;->ﾞᴵ:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "_dcu realtime event count"

    invoke-virtual {v1, v4, v0, v2}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lﹶﾞ/ᵢי;->ﹶᐧ:Lᐧﹳ/ʽ;

    const-string v1, "_dcu"

    invoke-virtual {v0, v4, v1, p1}, Lᐧﹳ/ʽ;->ʽ(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final ٴﹶ(Lﹶﾞ/ᐧˎ;)Ljava/lang/String;
    .locals 3

    .prologue
    sget-object v0, Lﹶﾞ/ⁱˉ;->ʽʽ:Lﹶﾞ/ⁱˉ;

    invoke-virtual {p1, v0}, Lﹶﾞ/ᐧˎ;->ʼˎ(Lﹶﾞ/ⁱˉ;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    new-array p1, p1, [B

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ﹳﹳ()Lﹶﾞ/ᵢﹳ;

    move-result-object v0

    invoke-virtual {v0}, Lﹶﾞ/ᵢﹳ;->ʿˎ()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-array p1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, p1, v2

    const-string v1, "%032x"

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final ᐧᴵ(Lﹶﾞ/ʻᐧ;)Lﹶﾞ/ʿᵢ;
    .locals 12

    .prologue
    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v0

    invoke-virtual {v0}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ʻˋ()V

    invoke-static {p1}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iget-boolean v0, p1, Lﹶﾞ/ʻᐧ;->ᵔٴ:Z

    iget-object v2, p1, Lﹶﾞ/ʻᐧ;->ʾˋ:Ljava/lang/String;

    invoke-static {v2}, Lٴﾞ/ʻٴ;->ʽ(Ljava/lang/String;)V

    iget-object v1, p1, Lﹶﾞ/ʻᐧ;->ـˏ:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Lﹶﾞ/ـˑ;

    invoke-direct {v3, p0, v1}, Lﹶﾞ/ـˑ;-><init>(Lﹶﾞ/ᵢי;Ljava/lang/String;)V

    iget-object v1, p0, Lﹶﾞ/ᵢי;->ˏᵢ:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v1}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v1, v2}, Lﹶﾞ/ˉʿ;->ᵢﹳ(Ljava/lang/String;)Lﹶﾞ/ʿᵢ;

    move-result-object v8

    invoke-virtual {p0, v2}, Lﹶﾞ/ᵢי;->ﹳٴ(Ljava/lang/String;)Lﹶﾞ/ᐧˎ;

    move-result-object v1

    iget-object v3, p1, Lﹶﾞ/ʻᐧ;->ʼˈ:Ljava/lang/String;

    const/16 v4, 0x64

    invoke-static {v4, v3}, Lﹶﾞ/ᐧˎ;->ʽ(ILjava/lang/String;)Lﹶﾞ/ᐧˎ;

    move-result-object v3

    invoke-virtual {v1, v3}, Lﹶﾞ/ᐧˎ;->ˆʾ(Lﹶﾞ/ᐧˎ;)Lﹶﾞ/ᐧˎ;

    move-result-object v1

    sget-object v3, Lﹶﾞ/ⁱˉ;->ᴵˊ:Lﹶﾞ/ⁱˉ;

    invoke-virtual {v1, v3}, Lﹶﾞ/ᐧˎ;->ʼˎ(Lﹶﾞ/ⁱˉ;)Z

    move-result v4

    const-string v5, ""

    if-eqz v4, :cond_1

    iget-object v4, p0, Lﹶﾞ/ᵢי;->ᵎⁱ:Lﹶﾞ/ˆˎ;

    invoke-virtual {v4, v2, v0}, Lﹶﾞ/ˆˎ;->יˉ(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v5

    :goto_0
    const/4 v9, 0x1

    sget-object v6, Lﹶﾞ/ⁱˉ;->ʽʽ:Lﹶﾞ/ⁱˉ;

    const/4 v10, 0x0

    if-nez v8, :cond_4

    new-instance v8, Lﹶﾞ/ʿᵢ;

    iget-object v5, p0, Lﹶﾞ/ᵢי;->ᵔי:Lﹶﾞ/ᵎʻ;

    invoke-direct {v8, v5, v2}, Lﹶﾞ/ʿᵢ;-><init>(Lﹶﾞ/ᵎʻ;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Lﹶﾞ/ᐧˎ;->ʼˎ(Lﹶﾞ/ⁱˉ;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v1}, Lﹶﾞ/ᵢי;->ٴﹶ(Lﹶﾞ/ᐧˎ;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lﹶﾞ/ʿᵢ;->ˊʻ(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1, v3}, Lﹶﾞ/ᐧˎ;->ʼˎ(Lﹶﾞ/ⁱˉ;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v8, v4}, Lﹶﾞ/ʿᵢ;->ᵎⁱ(Ljava/lang/String;)V

    :cond_3
    :goto_1
    move v11, v10

    goto/16 :goto_4

    :cond_4
    iget-object v7, v8, Lﹶﾞ/ʿᵢ;->ﹳٴ:Lﹶﾞ/ᵎʻ;

    invoke-virtual {v1, v3}, Lﹶﾞ/ᐧˎ;->ʼˎ(Lﹶﾞ/ⁱˉ;)Z

    move-result v11

    if-eqz v11, :cond_8

    if-eqz v4, :cond_8

    iget-object v11, v7, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v11}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    invoke-virtual {v11}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    iget-object v11, v8, Lﹶﾞ/ʿᵢ;->ˑﹳ:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    iget-object v7, v7, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v7}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    invoke-virtual {v7}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    iget-object v7, v8, Lﹶﾞ/ʿᵢ;->ˑﹳ:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    invoke-virtual {v8, v4}, Lﹶﾞ/ʿᵢ;->ᵎⁱ(Ljava/lang/String;)V

    if-eqz v0, :cond_7

    iget-object v4, p0, Lﹶﾞ/ᵢי;->ᵎⁱ:Lﹶﾞ/ˆˎ;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v3}, Lﹶﾞ/ᐧˎ;->ʼˎ(Lﹶﾞ/ⁱˉ;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v4, v2}, Lﹶﾞ/ˆˎ;->ʼᵢ(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    goto :goto_2

    :cond_5
    new-instance v3, Landroid/util/Pair;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v3, v5, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string v4, "00000000-0000-0000-0000-000000000000"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    if-nez v7, :cond_7

    invoke-virtual {v1, v6}, Lﹶﾞ/ᐧˎ;->ʼˎ(Lﹶﾞ/ⁱˉ;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0, v1}, Lﹶﾞ/ᵢי;->ٴﹶ(Lﹶﾞ/ᐧˎ;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lﹶﾞ/ʿᵢ;->ˊʻ(Ljava/lang/String;)V

    move v11, v10

    goto :goto_3

    :cond_6
    move v11, v9

    :goto_3
    iget-object v1, p0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v1}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    const-string v3, "_id"

    invoke-virtual {v1, v2, v3}, Lﹶﾞ/ˉʿ;->ᐧˏ(Ljava/lang/String;Ljava/lang/String;)Lﹶﾞ/יי;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v1}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    const-string v3, "_lair"

    invoke-virtual {v1, v2, v3}, Lﹶﾞ/ˉʿ;->ᐧˏ(Ljava/lang/String;Ljava/lang/String;)Lﹶﾞ/יי;

    move-result-object v1

    if-nez v1, :cond_9

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎˊ()Lᵎᴵ/ﹳٴ;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    new-instance v1, Lﹶﾞ/יי;

    const-wide/16 v3, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v3, "auto"

    const-string v4, "_lair"

    invoke-direct/range {v1 .. v7}, Lﹶﾞ/יי;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    iget-object v2, p0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v2}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v2, v1}, Lﹶﾞ/ˉʿ;->ʾˏ(Lﹶﾞ/יי;)Z

    goto :goto_4

    :cond_7
    invoke-virtual {v8}, Lﹶﾞ/ʿᵢ;->ᴵᵔ()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v6}, Lﹶﾞ/ᐧˎ;->ʼˎ(Lﹶﾞ/ⁱˉ;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v1}, Lﹶﾞ/ᵢי;->ٴﹶ(Lﹶﾞ/ᐧˎ;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lﹶﾞ/ʿᵢ;->ˊʻ(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v8}, Lﹶﾞ/ʿᵢ;->ᴵᵔ()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v6}, Lﹶﾞ/ᐧˎ;->ʼˎ(Lﹶﾞ/ⁱˉ;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v1}, Lﹶﾞ/ᵢי;->ٴﹶ(Lﹶﾞ/ᐧˎ;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lﹶﾞ/ʿᵢ;->ˊʻ(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    :goto_4
    iget-object v1, v8, Lﹶﾞ/ʿᵢ;->ﹳٴ:Lﹶﾞ/ᵎʻ;

    iget-object v2, p1, Lﹶﾞ/ʻᐧ;->ᴵˊ:Ljava/lang/String;

    invoke-virtual {v8, v2}, Lﹶﾞ/ʿᵢ;->ˉٴ(Ljava/lang/String;)V

    iget-object v2, p1, Lﹶﾞ/ʻᐧ;->ᵎˊ:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v8, v2}, Lﹶﾞ/ʿᵢ;->ᵎˊ(Ljava/lang/String;)V

    :cond_a
    iget-wide v2, p1, Lﹶﾞ/ʻᐧ;->ᴵᵔ:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_b

    invoke-virtual {v8, v2, v3}, Lﹶﾞ/ʿᵢ;->ʼˈ(J)V

    :cond_b
    iget-object v2, p1, Lﹶﾞ/ʻᐧ;->ʽʽ:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {v8, v2}, Lﹶﾞ/ʿᵢ;->ˈʿ(Ljava/lang/String;)V

    :cond_c
    iget-wide v2, p1, Lﹶﾞ/ʻᐧ;->ٴʼ:J

    invoke-virtual {v8, v2, v3}, Lﹶﾞ/ʿᵢ;->ˋᵔ(J)V

    iget-object v2, p1, Lﹶﾞ/ʻᐧ;->ˈٴ:Ljava/lang/String;

    if-eqz v2, :cond_d

    invoke-virtual {v8, v2}, Lﹶﾞ/ʿᵢ;->ˊˋ(Ljava/lang/String;)V

    :cond_d
    iget-wide v2, p1, Lﹶﾞ/ʻᐧ;->ˊʻ:J

    invoke-virtual {v8, v2, v3}, Lﹶﾞ/ʿᵢ;->ﹳٴ(J)V

    iget-boolean v2, p1, Lﹶﾞ/ʻᐧ;->ˉٴ:Z

    invoke-virtual {v8, v2}, Lﹶﾞ/ʿᵢ;->ˈ(Z)V

    iget-object v2, p1, Lﹶﾞ/ʻᐧ;->ٴᵢ:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {v8, v2}, Lﹶﾞ/ʿᵢ;->ʻٴ(Ljava/lang/String;)V

    :cond_e
    iget-object v2, v1, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    invoke-virtual {v2}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    iget-boolean v2, v8, Lﹶﾞ/ʿᵢ;->ˋᵔ:Z

    iget-boolean v3, v8, Lﹶﾞ/ʿᵢ;->ʼᐧ:Z

    if-eq v3, v0, :cond_f

    move v3, v9

    goto :goto_5

    :cond_f
    move v3, v10

    :goto_5
    or-int/2addr v2, v3

    iput-boolean v2, v8, Lﹶﾞ/ʿᵢ;->ˋᵔ:Z

    iput-boolean v0, v8, Lﹶﾞ/ʿᵢ;->ʼᐧ:Z

    iget-object v0, p1, Lﹶﾞ/ʻᐧ;->ˑٴ:Ljava/lang/Boolean;

    iget-object v2, v1, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    invoke-virtual {v2}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    iget-boolean v2, v8, Lﹶﾞ/ʿᵢ;->ˋᵔ:Z

    iget-object v3, v8, Lﹶﾞ/ʿᵢ;->ᵔﹳ:Ljava/lang/Boolean;

    invoke-static {v3, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v9

    or-int/2addr v2, v3

    iput-boolean v2, v8, Lﹶﾞ/ʿᵢ;->ˋᵔ:Z

    iput-object v0, v8, Lﹶﾞ/ʿᵢ;->ᵔﹳ:Ljava/lang/Boolean;

    iget-wide v2, p1, Lﹶﾞ/ʻᐧ;->ˋᵔ:J

    invoke-virtual {v8, v2, v3}, Lﹶﾞ/ʿᵢ;->ʽ(J)V

    iget-object v0, p1, Lﹶﾞ/ʻᐧ;->ﹳـ:Ljava/lang/String;

    iget-object v2, v1, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    invoke-virtual {v2}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    iget-boolean v2, v8, Lﹶﾞ/ʿᵢ;->ˋᵔ:Z

    iget-object v3, v8, Lﹶﾞ/ʿᵢ;->ˏי:Ljava/lang/String;

    invoke-static {v3, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v9

    or-int/2addr v2, v3

    iput-boolean v2, v8, Lﹶﾞ/ʿᵢ;->ˋᵔ:Z

    iput-object v0, v8, Lﹶﾞ/ʿᵢ;->ˏי:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/measurement/יˋ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/יˋ;

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/יˋ;->ʾˋ:Lˆʽ/ᵔʾ;

    iget-object v2, v2, Lˆʽ/ᵔʾ;->ʾˋ:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/measurement/ᴵᵢ;

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᴵʼ()Lﹶﾞ/ᵎﹶ;

    move-result-object v2

    sget-object v3, Lﹶﾞ/ᴵᵔ;->ⁱᴵ:Lﹶﾞ/ˈٴ;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Lﹶﾞ/ᵎﹶ;->ˎˉ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v0, p1, Lﹶﾞ/ʻᐧ;->ˊˋ:Ljava/util/List;

    invoke-virtual {v8, v0}, Lﹶﾞ/ʿᵢ;->ʾᵎ(Ljava/util/List;)V

    goto :goto_6

    :cond_10
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/יˋ;->ʾˋ:Lˆʽ/ᵔʾ;

    iget-object v0, v0, Lˆʽ/ᵔʾ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ᴵᵢ;

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᴵʼ()Lﹶﾞ/ᵎﹶ;

    move-result-object v0

    sget-object v2, Lﹶﾞ/ᴵᵔ;->ٴᴵ:Lﹶﾞ/ˈٴ;

    invoke-virtual {v0, v4, v2}, Lﹶﾞ/ᵎﹶ;->ˎˉ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v8, v4}, Lﹶﾞ/ʿᵢ;->ʾᵎ(Ljava/util/List;)V

    :cond_11
    :goto_6
    iget-boolean v0, p1, Lﹶﾞ/ʻᐧ;->ˈⁱ:Z

    iget-object v2, v1, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    invoke-virtual {v2}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    iget-boolean v2, v8, Lﹶﾞ/ʿᵢ;->ˋᵔ:Z

    iget-boolean v3, v8, Lﹶﾞ/ʿᵢ;->ʽﹳ:Z

    if-eq v3, v0, :cond_12

    move v3, v9

    goto :goto_7

    :cond_12
    move v3, v10

    :goto_7
    or-int/2addr v2, v3

    iput-boolean v2, v8, Lﹶﾞ/ʿᵢ;->ˋᵔ:Z

    iput-boolean v0, v8, Lﹶﾞ/ʿᵢ;->ʽﹳ:Z

    iget-object v0, p1, Lﹶﾞ/ʻᐧ;->ᐧﾞ:Ljava/lang/String;

    iget-object v2, v1, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    invoke-virtual {v2}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    iget-boolean v2, v8, Lﹶﾞ/ʿᵢ;->ˋᵔ:Z

    iget-object v3, v8, Lﹶﾞ/ʿᵢ;->ʽʽ:Ljava/lang/String;

    if-eq v3, v0, :cond_13

    move v3, v9

    goto :goto_8

    :cond_13
    move v3, v10

    :goto_8
    or-int/2addr v2, v3

    iput-boolean v2, v8, Lﹶﾞ/ʿᵢ;->ˋᵔ:Z

    iput-object v0, v8, Lﹶﾞ/ʿᵢ;->ʽʽ:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/ˉˏ;->ﹳٴ()V

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᴵʼ()Lﹶﾞ/ᵎﹶ;

    move-result-object v0

    sget-object v2, Lﹶﾞ/ᴵᵔ;->ʼᵢ:Lﹶﾞ/ˈٴ;

    invoke-virtual {v0, v4, v2}, Lﹶﾞ/ᵎﹶ;->ˎˉ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget v0, p1, Lﹶﾞ/ʻᐧ;->ʿᵢ:I

    iget-object v2, v1, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    invoke-virtual {v2}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    iget-boolean v2, v8, Lﹶﾞ/ʿᵢ;->ˋᵔ:Z

    iget v3, v8, Lﹶﾞ/ʿᵢ;->ʾᵎ:I

    if-eq v3, v0, :cond_14

    move v3, v9

    goto :goto_9

    :cond_14
    move v3, v10

    :goto_9
    or-int/2addr v2, v3

    iput-boolean v2, v8, Lﹶﾞ/ʿᵢ;->ˋᵔ:Z

    iput v0, v8, Lﹶﾞ/ʿᵢ;->ʾᵎ:I

    :cond_15
    iget-wide v2, p1, Lﹶﾞ/ʻᐧ;->ᴵˑ:J

    invoke-virtual {v8, v2, v3}, Lﹶﾞ/ʿᵢ;->ᵢˏ(J)V

    iget-object v0, p1, Lﹶﾞ/ʻᐧ;->ᐧᴵ:Ljava/lang/String;

    iget-object v2, v1, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    invoke-virtual {v2}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    iget-boolean v2, v8, Lﹶﾞ/ʿᵢ;->ˋᵔ:Z

    iget-object v3, v8, Lﹶﾞ/ʿᵢ;->ٴᵢ:Ljava/lang/String;

    if-eq v3, v0, :cond_16

    move v3, v9

    goto :goto_a

    :cond_16
    move v3, v10

    :goto_a
    or-int/2addr v2, v3

    iput-boolean v2, v8, Lﹶﾞ/ʿᵢ;->ˋᵔ:Z

    iput-object v0, v8, Lﹶﾞ/ʿᵢ;->ٴᵢ:Ljava/lang/String;

    iget p1, p1, Lﹶﾞ/ʻᐧ;->ᴵʼ:I

    iget-object v0, v1, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    invoke-virtual {v0}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    iget-boolean v0, v8, Lﹶﾞ/ʿᵢ;->ˋᵔ:Z

    iget v1, v8, Lﹶﾞ/ʿᵢ;->ᵎⁱ:I

    if-eq v1, p1, :cond_17

    move v10, v9

    :cond_17
    or-int/2addr v0, v10

    iput-boolean v0, v8, Lﹶﾞ/ʿᵢ;->ˋᵔ:Z

    iput p1, v8, Lﹶﾞ/ʿᵢ;->ᵎⁱ:I

    invoke-virtual {v8}, Lﹶﾞ/ʿᵢ;->ˉˆ()Z

    move-result p1

    if-nez p1, :cond_19

    if-eqz v11, :cond_18

    goto :goto_b

    :cond_18
    return-object v8

    :cond_19
    move v9, v11

    :goto_b
    iget-object p1, p0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {p1}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {p1, v8, v9}, Lﹶﾞ/ˉʿ;->ᐧⁱ(Lﹶﾞ/ʿᵢ;Z)V

    return-object v8
.end method

.method public final ᐧﾞ(Lﹶﾞ/ʻᐧ;J)V
    .locals 16

    .prologue
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "app_id=?"

    iget-object v3, v1, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v3}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    iget-object v4, v2, Lﹶﾞ/ʻᐧ;->ʾˋ:Ljava/lang/String;

    invoke-static {v4}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lﹶﾞ/ˉʿ;->ᵢﹳ(Ljava/lang/String;)Lﹶﾞ/ʿᵢ;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹳﹳ()Lﹶﾞ/ᵢﹳ;

    iget-object v5, v2, Lﹶﾞ/ʻᐧ;->ᴵˊ:Ljava/lang/String;

    invoke-virtual {v3}, Lﹶﾞ/ʿᵢ;->ٴᵢ()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v7, :cond_2

    if-nez v8, :cond_2

    invoke-static {v5}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v5

    iget-object v5, v5, Lﹶﾞ/ﹳـ;->ᵎⁱ:Lﹶﾞ/ʼˈ;

    invoke-virtual {v3}, Lﹶﾞ/ʿᵢ;->ˈٴ()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v6

    const-string v7, "New GMP App Id passed in. Removing cached database data. appId"

    invoke-virtual {v5, v6, v7}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v1, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v5}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    iget-object v6, v5, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v6, Lﹶﾞ/ᵎʻ;

    invoke-virtual {v3}, Lﹶﾞ/ʿᵢ;->ˈٴ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Lﹶﾞ/ˎᵎ;->ﹶˎ()V

    invoke-virtual {v5}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    invoke-static {v3}, Lٴﾞ/ʻٴ;->ʽ(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v5}, Lﹶﾞ/ˉʿ;->יⁱ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "events"

    invoke-virtual {v5, v8, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    const-string v9, "user_attributes"

    invoke-virtual {v5, v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    add-int/2addr v8, v9

    const-string v9, "conditional_properties"

    invoke-virtual {v5, v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    add-int/2addr v8, v9

    const-string v9, "apps"

    invoke-virtual {v5, v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    add-int/2addr v8, v9

    const-string v9, "raw_events"

    invoke-virtual {v5, v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    add-int/2addr v8, v9

    const-string v9, "raw_events_metadata"

    invoke-virtual {v5, v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    add-int/2addr v8, v9

    const-string v9, "event_filters"

    invoke-virtual {v5, v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    add-int/2addr v8, v9

    const-string v9, "property_filters"

    invoke-virtual {v5, v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    add-int/2addr v8, v9

    const-string v9, "audience_filter_values"

    invoke-virtual {v5, v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    add-int/2addr v8, v9

    const-string v9, "consent_settings"

    invoke-virtual {v5, v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    add-int/2addr v8, v9

    const-string v9, "default_event_params"

    invoke-virtual {v5, v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    add-int/2addr v8, v9

    const-string v9, "trigger_uris"

    invoke-virtual {v5, v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    add-int/2addr v8, v9

    sget-object v9, Lcom/google/android/gms/internal/measurement/ʽˋ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʽˋ;

    iget-object v9, v9, Lcom/google/android/gms/internal/measurement/ʽˋ;->ʾˋ:Lˆʽ/ᵔʾ;

    iget-object v9, v9, Lˆʽ/ᵔʾ;->ʾˋ:Ljava/lang/Object;

    check-cast v9, Lcom/google/android/gms/internal/measurement/יﾞ;

    iget-object v9, v6, Lﹶﾞ/ᵎʻ;->ˈٴ:Lﹶﾞ/ᵎﹶ;

    sget-object v10, Lﹶﾞ/ᴵᵔ;->ˊﹳ:Lﹶﾞ/ˈٴ;

    invoke-virtual {v9, v4, v10}, Lﹶﾞ/ᵎﹶ;->ˎˉ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "no_data_mode_events"

    invoke-virtual {v5, v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v8, v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    if-lez v8, :cond_1

    iget-object v0, v6, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v5, "Deleted application data. app, records"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v3, v7, v5}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    move-object v3, v4

    goto :goto_3

    :goto_2
    iget-object v5, v6, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v5}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v5, v5, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    invoke-static {v3}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v3

    const-string v6, "Error deleting application data. appId, error"

    invoke-virtual {v5, v3, v0, v6}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_3
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lﹶﾞ/ʿᵢ;->ˑٴ()J

    move-result-wide v5

    const-wide/32 v7, -0x80000000

    cmp-long v0, v5, v7

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Lﹶﾞ/ʿᵢ;->ˑٴ()J

    move-result-wide v9

    iget-wide v11, v2, Lﹶﾞ/ʻᐧ;->ٴʼ:J

    cmp-long v0, v9, v11

    if-eqz v0, :cond_3

    move v0, v5

    goto :goto_4

    :cond_3
    move v0, v6

    :goto_4
    invoke-virtual {v3}, Lﹶﾞ/ʿᵢ;->ᵔٴ()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Lﹶﾞ/ʿᵢ;->ˑٴ()J

    move-result-wide v10

    cmp-long v3, v10, v7

    if-nez v3, :cond_4

    if-eqz v9, :cond_4

    iget-object v3, v2, Lﹶﾞ/ʻᐧ;->ʽʽ:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_5

    :cond_4
    move v5, v6

    :goto_5
    or-int/2addr v0, v5

    if-eqz v0, :cond_6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "_pv"

    invoke-virtual {v0, v3, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Lﹶﾞ/ˏי;

    new-instance v12, Lﹶﾞ/יـ;

    invoke-direct {v12, v0}, Lﹶﾞ/יـ;-><init>(Landroid/os/Bundle;)V

    const-string v13, "auto"

    const-string v11, "_au"

    move-wide/from16 v14, p2

    invoke-direct/range {v10 .. v15}, Lﹶﾞ/ˏי;-><init>(Ljava/lang/String;Lﹶﾞ/יـ;Ljava/lang/String;J)V

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᴵʼ()Lﹶﾞ/ᵎﹶ;

    move-result-object v0

    sget-object v3, Lﹶﾞ/ᴵᵔ;->ﾞˏ:Lﹶﾞ/ˈٴ;

    invoke-virtual {v0, v4, v3}, Lﹶﾞ/ᵎﹶ;->ˎˉ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v1, v10, v2}, Lﹶﾞ/ᵢי;->ˈ(Lﹶﾞ/ˏי;Lﹶﾞ/ʻᐧ;)V

    return-void

    :cond_5
    invoke-virtual {v1, v10, v2}, Lﹶﾞ/ᵢי;->ˑﹳ(Lﹶﾞ/ˏי;Lﹶﾞ/ʻᐧ;)V

    :cond_6
    return-void
.end method

.method public final ᴵʼ()Lﹶﾞ/ᵎﹶ;
    .locals 1

    iget-object v0, p0, Lﹶﾞ/ᵢי;->ᵔי:Lﹶﾞ/ᵎʻ;

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ˈٴ:Lﹶﾞ/ᵎﹶ;

    return-object v0
.end method

.method public final ᴵˑ(Lﹶﾞ/ʿˎ;Lﹶﾞ/ʻᐧ;)V
    .locals 23

    .prologue
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "_id"

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v4

    invoke-virtual {v4}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ʻˋ()V

    invoke-static {v2}, Lﹶﾞ/ᵢי;->ـˏ(Lﹶﾞ/ʻᐧ;)Z

    move-result v4

    iget-object v6, v2, Lﹶﾞ/ʻᐧ;->ʾˋ:Ljava/lang/String;

    if-nez v4, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-boolean v4, v2, Lﹶﾞ/ʻᐧ;->ˉٴ:Z

    if-nez v4, :cond_1

    invoke-virtual {v1, v2}, Lﹶﾞ/ᵢי;->ᐧᴵ(Lﹶﾞ/ʻᐧ;)Lﹶﾞ/ʿᵢ;

    return-void

    :cond_1
    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹳﹳ()Lﹶﾞ/ᵢﹳ;

    move-result-object v4

    iget-object v8, v0, Lﹶﾞ/ʿˎ;->ᴵˊ:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lﹶﾞ/ᵢﹳ;->ﾞי(Ljava/lang/String;)I

    move-result v11

    const/4 v4, 0x1

    const/16 v5, 0x18

    iget-object v9, v1, Lﹶﾞ/ᵢי;->ﹶᐧ:Lᐧﹳ/ʽ;

    if-eqz v11, :cond_3

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹳﹳ()Lﹶﾞ/ᵢﹳ;

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᴵʼ()Lﹶﾞ/ᵎﹶ;

    invoke-static {v5, v8, v4}, Lﹶﾞ/ᵢﹳ;->יˉ(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v13

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    move v14, v12

    goto :goto_0

    :cond_2
    const/4 v14, 0x0

    :goto_0
    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹳﹳ()Lﹶﾞ/ᵢﹳ;

    iget-object v10, v2, Lﹶﾞ/ʻᐧ;->ʾˋ:Ljava/lang/String;

    const-string v12, "_ev"

    invoke-static/range {v9 .. v14}, Lﹶﾞ/ᵢﹳ;->ٴʿ(Lﹶﾞ/יˑ;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_3
    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹳﹳ()Lﹶﾞ/ᵢﹳ;

    move-result-object v7

    invoke-virtual {v0}, Lﹶﾞ/ʿˎ;->ﹳٴ()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v7, v10, v8}, Lﹶﾞ/ᵢﹳ;->ˋـ(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_6

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹳﹳ()Lﹶﾞ/ᵢﹳ;

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᴵʼ()Lﹶﾞ/ᵎﹶ;

    invoke-static {v5, v8, v4}, Lﹶﾞ/ᵢﹳ;->יˉ(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v0}, Lﹶﾞ/ʿˎ;->ﹳٴ()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    instance-of v3, v0, Ljava/lang/String;

    if-nez v3, :cond_5

    instance-of v3, v0, Ljava/lang/CharSequence;

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    const/16 v17, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    move/from16 v17, v12

    :goto_2
    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹳﹳ()Lﹶﾞ/ᵢﹳ;

    iget-object v13, v2, Lﹶﾞ/ʻᐧ;->ʾˋ:Ljava/lang/String;

    const-string v15, "_ev"

    move-object v12, v9

    invoke-static/range {v12 .. v17}, Lﹶﾞ/ᵢﹳ;->ٴʿ(Lﹶﾞ/יˑ;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_6
    move-object v4, v9

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹳﹳ()Lﹶﾞ/ᵢﹳ;

    move-result-object v5

    invoke-virtual {v0}, Lﹶﾞ/ʿˎ;->ﹳٴ()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7, v8}, Lﹶﾞ/ᵢﹳ;->ﹶʽ(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_f

    const-string v13, "_sid"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-wide v9, v0, Lﹶﾞ/ʿˎ;->ʽʽ:J

    iget-object v5, v0, Lﹶﾞ/ʿˎ;->ˊʻ:Ljava/lang/String;

    invoke-static {v6}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iget-object v7, v1, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v7}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    const-string v14, "_sno"

    invoke-virtual {v7, v6, v14}, Lﹶﾞ/ˉʿ;->ᐧˏ(Ljava/lang/String;Ljava/lang/String;)Lﹶﾞ/יי;

    move-result-object v7

    if-eqz v7, :cond_7

    iget-object v14, v7, Lﹶﾞ/יי;->ˑﹳ:Ljava/lang/Object;

    instance-of v15, v14, Ljava/lang/Long;

    if-eqz v15, :cond_7

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    move-object/from16 v22, v13

    goto :goto_3

    :cond_7
    if-eqz v7, :cond_8

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v14

    iget-object v14, v14, Lﹶﾞ/ﹳـ;->ᵎⁱ:Lﹶﾞ/ʼˈ;

    const-string v15, "Retrieved last session number from database does not contain a valid (long) value"

    iget-object v7, v7, Lﹶﾞ/יי;->ˑﹳ:Ljava/lang/Object;

    invoke-virtual {v14, v7, v15}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_8
    iget-object v7, v1, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v7}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    const-string v14, "_s"

    const-string v15, "events"

    invoke-virtual {v7, v15, v6, v14}, Lﹶﾞ/ˉʿ;->ˆˑ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lﹶﾞ/ᵔﹳ;

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v14

    iget-object v14, v14, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    move-object/from16 v22, v13

    iget-wide v12, v7, Lﹶﾞ/ᵔﹳ;->ʽ:J

    const-string v7, "Backfill the session number. Last used session number"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15, v7}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    move-wide v14, v12

    goto :goto_3

    :cond_9
    move-object/from16 v22, v13

    const-wide/16 v14, 0x0

    :goto_3
    new-instance v16, Lﹶﾞ/ʿˎ;

    const-wide/16 v12, 0x1

    add-long/2addr v14, v12

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const-string v20, "_sno"

    move-object/from16 v21, v5

    move-wide/from16 v17, v9

    invoke-direct/range {v16 .. v21}, Lﹶﾞ/ʿˎ;-><init>(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v5, v16

    invoke-virtual {v1, v5, v2}, Lﹶﾞ/ᵢי;->ᴵˑ(Lﹶﾞ/ʿˎ;Lﹶﾞ/ʻᐧ;)V

    goto :goto_4

    :cond_a
    move-object/from16 v22, v13

    :goto_4
    new-instance v5, Lﹶﾞ/יי;

    invoke-static {v6}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iget-object v7, v0, Lﹶﾞ/ʿˎ;->ˊʻ:Ljava/lang/String;

    invoke-static {v7}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iget-wide v9, v0, Lﹶﾞ/ʿˎ;->ʽʽ:J

    invoke-direct/range {v5 .. v11}, Lﹶﾞ/יי;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v0

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    iget-object v7, v1, Lﹶﾞ/ᵢי;->ᵔי:Lﹶﾞ/ᵎʻ;

    iget-object v9, v7, Lﹶﾞ/ᵎʻ;->ٴʼ:Lﹶﾞ/ˑٴ;

    iget-object v10, v5, Lﹶﾞ/יי;->ʽ:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lﹶﾞ/ˑٴ;->ʽ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v12, "Setting user property"

    invoke-virtual {v0, v9, v11, v12}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v1, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v0}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v0}, Lﹶﾞ/ˉʿ;->ˎʼ()V

    :try_start_0
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v9, v5, Lﹶﾞ/יי;->ˑﹳ:Ljava/lang/Object;

    if-eqz v0, :cond_b

    :try_start_1
    iget-object v0, v1, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v0}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v0, v6, v3}, Lﹶﾞ/ˉʿ;->ᐧˏ(Ljava/lang/String;Ljava/lang/String;)Lﹶﾞ/יי;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, v0, Lﹶﾞ/יי;->ˑﹳ:Ljava/lang/Object;

    invoke-virtual {v9, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, v1, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v0}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    const-string v3, "_lair"

    invoke-virtual {v0, v6, v3}, Lﹶﾞ/ˉʿ;->ˎᵎ(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_b
    :goto_5
    invoke-virtual {v1, v2}, Lﹶﾞ/ᵢי;->ᐧᴵ(Lﹶﾞ/ʻᐧ;)Lﹶﾞ/ʿᵢ;

    iget-object v0, v1, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v0}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v0, v5}, Lﹶﾞ/ˉʿ;->ʾˏ(Lﹶﾞ/יי;)Z

    move-result v0

    move-object/from16 v3, v22

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, v1, Lﹶﾞ/ᵢי;->ٴᵢ:Lﹶﾞ/ʿ;

    invoke-static {v3}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    iget-object v2, v2, Lﹶﾞ/ʻᐧ;->ﹳـ:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    const-wide/16 v14, 0x0

    goto :goto_6

    :cond_c
    const-string v5, "UTF-8"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Lﹶﾞ/ʿ;->ˑﹶ([B)J

    move-result-wide v14

    :goto_6
    iget-object v2, v1, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v2}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v2, v6}, Lﹶﾞ/ˉʿ;->ᵢﹳ(Ljava/lang/String;)Lﹶﾞ/ʿᵢ;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v2, v14, v15}, Lﹶﾞ/ʿᵢ;->ʾˋ(J)V

    invoke-virtual {v2}, Lﹶﾞ/ʿᵢ;->ˉˆ()Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, v1, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v3}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    const/4 v15, 0x0

    invoke-virtual {v3, v2, v15}, Lﹶﾞ/ˉʿ;->ᐧⁱ(Lﹶﾞ/ʿᵢ;Z)V

    :cond_d
    iget-object v2, v1, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v2}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v2}, Lﹶﾞ/ˉʿ;->ʻˆ()V

    if-nez v0, :cond_e

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v0

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v2, "Too many unique user properties are set. Ignoring user property"

    iget-object v3, v7, Lﹶﾞ/ᵎʻ;->ٴʼ:Lﹶﾞ/ˑٴ;

    invoke-virtual {v3, v10}, Lﹶﾞ/ˑٴ;->ʽ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v9, v2}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹳﹳ()Lﹶﾞ/ᵢﹳ;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v7, 0x9

    const/4 v8, 0x0

    move-object v5, v4

    invoke-static/range {v5 .. v10}, Lﹶﾞ/ᵢﹳ;->ٴʿ(Lﹶﾞ/יˑ;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_e
    iget-object v0, v1, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v0}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v0}, Lﹶﾞ/ˉʿ;->ˏʻ()V

    return-void

    :goto_7
    iget-object v2, v1, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v2}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v2}, Lﹶﾞ/ˉʿ;->ˏʻ()V

    throw v0

    :cond_f
    :goto_8
    return-void
.end method

.method public final ᴵᵔ(Lcom/google/android/gms/internal/measurement/ٴʿ;)Ljava/util/HashMap;
    .locals 5

    .prologue
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ﹶᐧ()Lﹶﾞ/ʿ;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ٴʿ;->ʼᐧ()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ˊﾞ;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ˊﾞ;->ᵔﹳ()Ljava/lang/String;

    move-result-object v3

    const-string v4, "gad_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lﹶﾞ/ʿ;->ᵔⁱ(Lcom/google/android/gms/internal/measurement/ˊﾞ;)Ljava/io/Serializable;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ˊﾞ;->ᵔﹳ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public final ᵎʻ(Ljava/lang/String;)Lﹶﾞ/ˉˆ;
    .locals 4

    .prologue
    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v0

    invoke-virtual {v0}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ʻˋ()V

    iget-object v0, p0, Lﹶﾞ/ᵢי;->ᐧᴵ:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lﹶﾞ/ˉˆ;

    if-nez v1, :cond_0

    iget-object v1, p0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v1}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-static {p1}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    invoke-virtual {v1}, Lﹶﾞ/ˎᵎ;->ﹶˎ()V

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "select dma_consent_settings from consent_settings where app_id=? limit 1;"

    invoke-virtual {v1, v3, v2}, Lﹶﾞ/ˉʿ;->ˊﹳ(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lﹶﾞ/ˉˆ;->ⁱˊ(Ljava/lang/String;)Lﹶﾞ/ˉˆ;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method public final ᵎˊ()Lᵎᴵ/ﹳٴ;
    .locals 1

    iget-object v0, p0, Lﹶﾞ/ᵢי;->ᵔי:Lﹶﾞ/ᵎʻ;

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ᵎˊ:Lᵎᴵ/ﹳٴ;

    return-object v0
.end method

.method public final ᵎᵔ(Lﹶﾞ/ˑﹳ;Lﹶﾞ/ʻᐧ;)V
    .locals 9

    .prologue
    iget-object v0, p1, Lﹶﾞ/ˑﹳ;->ʾˋ:Ljava/lang/String;

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ʽ(Ljava/lang/String;)V

    iget-object v0, p1, Lﹶﾞ/ˑﹳ;->ʽʽ:Lﹶﾞ/ʿˎ;

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iget-object v0, p1, Lﹶﾞ/ˑﹳ;->ʽʽ:Lﹶﾞ/ʿˎ;

    iget-object v0, v0, Lﹶﾞ/ʿˎ;->ᴵˊ:Ljava/lang/String;

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ʽ(Ljava/lang/String;)V

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v0

    invoke-virtual {v0}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ʻˋ()V

    invoke-static {p2}, Lﹶﾞ/ᵢי;->ـˏ(Lﹶﾞ/ʻᐧ;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p2, Lﹶﾞ/ʻᐧ;->ˉٴ:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p2}, Lﹶﾞ/ᵢי;->ᐧᴵ(Lﹶﾞ/ʻᐧ;)Lﹶﾞ/ʿᵢ;

    return-void

    :cond_1
    iget-object v0, p0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v0}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v0}, Lﹶﾞ/ˉʿ;->ˎʼ()V

    :try_start_0
    invoke-virtual {p0, p2}, Lﹶﾞ/ᵢי;->ᐧᴵ(Lﹶﾞ/ʻᐧ;)Lﹶﾞ/ʿᵢ;

    iget-object v0, p1, Lﹶﾞ/ˑﹳ;->ʾˋ:Ljava/lang/String;

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iget-object v1, p0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v1}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    iget-object v2, p1, Lﹶﾞ/ˑﹳ;->ʽʽ:Lﹶﾞ/ʿˎ;

    iget-object v2, v2, Lﹶﾞ/ʿˎ;->ᴵˊ:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lﹶﾞ/ˉʿ;->ˑˉ(Ljava/lang/String;Ljava/lang/String;)Lﹶﾞ/ˑﹳ;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lﹶﾞ/ᵢי;->ᵔי:Lﹶﾞ/ᵎʻ;

    if-eqz v1, :cond_4

    :try_start_1
    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v3

    iget-object v3, v3, Lﹶﾞ/ﹳـ;->ˆﾞ:Lﹶﾞ/ʼˈ;

    const-string v4, "Removing conditional user property"

    iget-object v5, p1, Lﹶﾞ/ˑﹳ;->ʾˋ:Ljava/lang/String;

    iget-object v2, v2, Lﹶﾞ/ᵎʻ;->ٴʼ:Lﹶﾞ/ˑٴ;

    iget-object v6, p1, Lﹶﾞ/ˑﹳ;->ʽʽ:Lﹶﾞ/ʿˎ;

    iget-object v6, v6, Lﹶﾞ/ʿˎ;->ᴵˊ:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lﹶﾞ/ˑٴ;->ʽ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v5, v2, v4}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v2}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    iget-object v3, p1, Lﹶﾞ/ˑﹳ;->ʽʽ:Lﹶﾞ/ʿˎ;

    iget-object v3, v3, Lﹶﾞ/ʿˎ;->ᴵˊ:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lﹶﾞ/ˉʿ;->ʿˎ(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, v1, Lﹶﾞ/ˑﹳ;->ᴵᵔ:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v2}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    iget-object v3, p1, Lﹶﾞ/ˑﹳ;->ʽʽ:Lﹶﾞ/ʿˎ;

    iget-object v3, v3, Lﹶﾞ/ʿˎ;->ᴵˊ:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lﹶﾞ/ˉʿ;->ˎᵎ(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_4

    :cond_2
    :goto_0
    iget-object p1, p1, Lﹶﾞ/ˑﹳ;->ᵎˊ:Lﹶﾞ/ˏי;

    if-eqz p1, :cond_5

    iget-object v0, p1, Lﹶﾞ/ˏי;->ᴵˊ:Lﹶﾞ/יـ;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lﹶﾞ/יـ;->ˑﹳ()Landroid/os/Bundle;

    move-result-object v0

    :goto_1
    move-object v4, v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :goto_2
    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ﹳﹳ()Lﹶﾞ/ᵢﹳ;

    move-result-object v2

    iget-object v3, p1, Lﹶﾞ/ˏי;->ʾˋ:Ljava/lang/String;

    iget-object v5, v1, Lﹶﾞ/ˑﹳ;->ᴵˊ:Ljava/lang/String;

    iget-wide v6, p1, Lﹶﾞ/ˏי;->ˈٴ:J

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Lﹶﾞ/ᵢﹳ;->ʻʼ(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZ)Lﹶﾞ/ˏי;

    move-result-object p1

    invoke-static {p1}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lﹶﾞ/ᵢי;->ᵔᵢ(Lﹶﾞ/ˏי;Lﹶﾞ/ʻᐧ;)V

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object p2

    iget-object p2, p2, Lﹶﾞ/ﹳـ;->ᵎⁱ:Lﹶﾞ/ʼˈ;

    const-string v0, "Conditional user property doesn\'t exist"

    iget-object v1, p1, Lﹶﾞ/ˑﹳ;->ʾˋ:Ljava/lang/String;

    invoke-static {v1}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v1

    iget-object v2, v2, Lﹶﾞ/ᵎʻ;->ٴʼ:Lﹶﾞ/ˑٴ;

    iget-object p1, p1, Lﹶﾞ/ˑﹳ;->ʽʽ:Lﹶﾞ/ʿˎ;

    iget-object p1, p1, Lﹶﾞ/ʿˎ;->ᴵˊ:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lﹶﾞ/ˑٴ;->ʽ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, p1, v0}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    :goto_3
    iget-object p1, p0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {p1}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {p1}, Lﹶﾞ/ˉʿ;->ʻˆ()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {p1}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {p1}, Lﹶﾞ/ˉʿ;->ˏʻ()V

    return-void

    :goto_4
    iget-object p2, p0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {p2}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {p2}, Lﹶﾞ/ˉʿ;->ˏʻ()V

    throw p1
.end method

.method public final ᵎⁱ(Lcom/google/android/gms/internal/measurement/ᵔⁱ;Lcom/google/android/gms/internal/measurement/ᵔⁱ;)Z
    .locals 8

    .prologue
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ᵔﹳ()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_e"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ﹳٴ(Z)V

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ﹶᐧ()Lﹶﾞ/ʿ;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ٴʿ;

    const-string v2, "_sc"

    invoke-static {v0, v2}, Lﹶﾞ/ʿ;->ˎʾ(Lcom/google/android/gms/internal/measurement/ٴʿ;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ˊﾞ;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ˊﾞ;->יـ()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ﹶᐧ()Lﹶﾞ/ʿ;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/ٴʿ;

    const-string v4, "_pc"

    invoke-static {v3, v4}, Lﹶﾞ/ʿ;->ˎʾ(Lcom/google/android/gms/internal/measurement/ٴʿ;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ˊﾞ;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ˊﾞ;->יـ()Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_5

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ᵔⁱ;->ᵔﹳ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ﹳٴ(Z)V

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ﹶᐧ()Lﹶﾞ/ʿ;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ٴʿ;

    const-string v1, "_et"

    invoke-static {v0, v1}, Lﹶﾞ/ʿ;->ˎʾ(Lcom/google/android/gms/internal/measurement/ٴʿ;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ˊﾞ;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ˊﾞ;->ˏי()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ˊﾞ;->ʽﹳ()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ˊﾞ;->ʽﹳ()J

    move-result-wide v2

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ﹶᐧ()Lﹶﾞ/ʿ;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ٴʿ;

    invoke-static {v0, v1}, Lﹶﾞ/ʿ;->ˎʾ(Lcom/google/android/gms/internal/measurement/ٴʿ;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ˊﾞ;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ˊﾞ;->ʽﹳ()J

    move-result-wide v6

    cmp-long v4, v6, v4

    if-lez v4, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ˊﾞ;->ʽﹳ()J

    move-result-wide v4

    add-long/2addr v2, v4

    :cond_3
    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ﹶᐧ()Lﹶﾞ/ʿ;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p2, v1, v0}, Lﹶﾞ/ʿ;->ﾞˋ(Lcom/google/android/gms/internal/measurement/ᵔⁱ;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ﹶᐧ()Lﹶﾞ/ʿ;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "_fr"

    invoke-static {p1, v0, p2}, Lﹶﾞ/ʿ;->ﾞˋ(Lcom/google/android/gms/internal/measurement/ᵔⁱ;Ljava/lang/String;Ljava/lang/Long;)V

    :cond_4
    :goto_2
    const/4 p1, 0x1

    return p1

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public final ᵎﹶ()Lﹶﾞ/ﹳـ;
    .locals 1

    iget-object v0, p0, Lﹶﾞ/ᵢי;->ᵔי:Lﹶﾞ/ᵎʻ;

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    return-object v0
.end method

.method public final ᵔʾ(Ljava/lang/String;J)V
    .locals 31

    .prologue
    move-object/from16 v1, p0

    move-object/from16 v6, p1

    move-wide/from16 v2, p2

    const-string v4, "data"

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᴵʼ()Lﹶﾞ/ᵎﹶ;

    move-result-object v0

    sget-object v5, Lﹶﾞ/ᴵᵔ;->ᵔᵢ:Lﹶﾞ/ˈٴ;

    invoke-virtual {v0, v6, v5}, Lﹶﾞ/ᵎﹶ;->ˎʾ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)I

    move-result v0

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᴵʼ()Lﹶﾞ/ᵎﹶ;

    move-result-object v5

    sget-object v7, Lﹶﾞ/ᴵᵔ;->ʼˎ:Lﹶﾞ/ˈٴ;

    invoke-virtual {v5, v6, v7}, Lﹶﾞ/ᵎﹶ;->ˎʾ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)I

    move-result v5

    const/4 v7, 0x0

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ˊᵔ()Lﹶﾞ/ˉʿ;

    move-result-object v8

    iget-object v9, v8, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v9, Lﹶﾞ/ᵎʻ;

    invoke-virtual {v8}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    invoke-virtual {v8}, Lﹶﾞ/ˎᵎ;->ﹶˎ()V

    const/4 v10, 0x1

    if-lez v0, :cond_0

    move v11, v10

    goto :goto_0

    :cond_0
    move v11, v7

    :goto_0
    invoke-static {v11}, Lٴﾞ/ʻٴ;->ﹳٴ(Z)V

    if-lez v5, :cond_1

    move v11, v10

    goto :goto_1

    :cond_1
    move v11, v7

    :goto_1
    invoke-static {v11}, Lٴﾞ/ʻٴ;->ﹳٴ(Z)V

    invoke-static {v6}, Lٴﾞ/ʻٴ;->ʽ(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v8}, Lﹶﾞ/ˉʿ;->יⁱ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    const-string v16, "queue"
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v24, -0x1

    :try_start_1
    const-string v11, "rowid"

    const-string v12, "retry_count"

    filled-new-array {v11, v4, v12}, [Ljava/lang/String;

    move-result-object v17

    const-string v18, "app_id=?"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v19

    const-string v22, "rowid"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v15 .. v23}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v12, v0

    goto/16 :goto_12

    :catchall_0
    move-exception v0

    goto/16 :goto_e

    :catch_0
    move-exception v0

    move-object/from16 v23, v9

    goto/16 :goto_11

    :cond_3
    :try_start_3
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move v15, v7

    :goto_3
    invoke-interface {v11, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-interface {v11, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iget-object v10, v8, Lﹶﾞ/ˏʻ;->ᴵˊ:Lﹶﾞ/ᵢי;

    invoke-virtual {v10}, Lﹶﾞ/ᵢי;->ﹶᐧ()Lﹶﾞ/ʿ;

    move-result-object v10
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    new-instance v14, Ljava/io/ByteArrayInputStream;

    invoke-direct {v14, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v14}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v7, 0x400

    new-array v7, v7, [B
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v22, v8

    :goto_4
    :try_start_6
    invoke-virtual {v0, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-gtz v8, :cond_b

    invoke-virtual {v0}, Ljava/util/zip/GZIPInputStream;->close()V

    invoke-virtual {v14}, Ljava/io/ByteArrayInputStream;->close()V

    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    array-length v7, v0
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    add-int/2addr v7, v15

    if-le v7, v5, :cond_4

    goto/16 :goto_d

    :cond_4
    :try_start_8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ﹳـ()Lcom/google/android/gms/internal/measurement/ʽʾ;

    move-result-object v7

    invoke-static {v7, v0}, Lﹶﾞ/ʿ;->ʻˆ(Lcom/google/android/gms/internal/measurement/ﹳᴵ;[B)Lcom/google/android/gms/internal/measurement/ﹳᴵ;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/ʽʾ;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_9

    const/4 v8, 0x0

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    iget-object v8, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ˑ()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ˑ()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ᐧˎ()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ᐧˎ()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ـˊ()Z

    move-result v13

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ـˊ()Z

    move-result v14

    if-ne v13, v14, :cond_d

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʿـ()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʿـ()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʼᵎ()Lcom/google/android/gms/internal/measurement/ʻˈ;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const-string v14, "_npa"

    if-eqz v13, :cond_6

    :try_start_a
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/ˆʻ;

    move-object/from16 v23, v8

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/ˆʻ;->ﹳᐧ()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/ˆʻ;->ʻٴ()J

    move-result-wide v26

    goto :goto_6

    :cond_5
    move-object/from16 v8, v23

    goto :goto_5

    :cond_6
    move-wide/from16 v26, v24

    :goto_6
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʼᵎ()Lcom/google/android/gms/internal/measurement/ʻˈ;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/ˆʻ;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/ˆʻ;->ﹳᐧ()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/ˆʻ;->ʻٴ()J

    move-result-wide v13

    goto :goto_7

    :cond_8
    move-wide/from16 v13, v24

    :goto_7
    cmp-long v8, v26, v13

    if-nez v8, :cond_d

    :cond_9
    const/4 v8, 0x2

    invoke-interface {v11, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-nez v10, :cond_a

    invoke-interface {v11, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v8, v7, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v8, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ˈـ(I)V

    :cond_a
    array-length v0, v0

    add-int/2addr v15, v0

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_8
    move-object/from16 v23, v9

    goto :goto_c

    :catch_1
    move-exception v0

    invoke-virtual {v9}, Lﹶﾞ/ᵎʻ;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v7

    invoke-virtual {v7}, Lﹶﾞ/ﹳـ;->ʼᵢ()Lﹶﾞ/ʼˈ;

    move-result-object v7

    const-string v8, "Failed to merge queued bundle. appId"

    invoke-static {v6}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v10

    invoke-virtual {v7, v10, v0, v8}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_8

    :catch_2
    move-exception v0

    :goto_9
    move-object/from16 v23, v9

    goto :goto_a

    :cond_b
    move-object/from16 v23, v9

    const/4 v9, 0x0

    :try_start_b
    invoke-virtual {v13, v7, v9, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-object/from16 v9, v23

    goto/16 :goto_4

    :catch_3
    move-exception v0

    goto :goto_a

    :catch_4
    move-exception v0

    move-object/from16 v22, v8

    goto :goto_9

    :goto_a
    :try_start_c
    iget-object v7, v10, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v7, Lﹶﾞ/ᵎʻ;

    invoke-virtual {v7}, Lﹶﾞ/ᵎʻ;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v7

    invoke-virtual {v7}, Lﹶﾞ/ﹳـ;->ʼᵢ()Lﹶﾞ/ʼˈ;

    move-result-object v7

    const-string v8, "Failed to ungzip content"

    invoke-virtual {v7, v0, v8}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    throw v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :catch_5
    move-exception v0

    goto :goto_b

    :catch_6
    move-exception v0

    goto :goto_11

    :catch_7
    move-exception v0

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    :goto_b
    :try_start_d
    invoke-virtual/range {v23 .. v23}, Lﹶﾞ/ᵎʻ;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v7

    invoke-virtual {v7}, Lﹶﾞ/ﹳـ;->ʼᵢ()Lﹶﾞ/ʼˈ;

    move-result-object v7

    const-string v8, "Failed to unzip queued bundle. appId"

    invoke-static {v6}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v9

    invoke-virtual {v7, v9, v0, v8}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_c
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-eqz v0, :cond_d

    if-le v15, v5, :cond_c

    goto :goto_d

    :cond_c
    move-object/from16 v8, v22

    move-object/from16 v9, v23

    const/4 v7, 0x0

    const/4 v10, 0x1

    goto/16 :goto_3

    :cond_d
    :goto_d
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_12

    :goto_e
    move-object v14, v11

    goto/16 :goto_3c

    :catchall_1
    move-exception v0

    goto :goto_f

    :catch_8
    move-exception v0

    move-object/from16 v23, v9

    goto :goto_10

    :catch_9
    move-exception v0

    move-object/from16 v23, v9

    const-wide/16 v24, -0x1

    goto :goto_10

    :goto_f
    const/4 v14, 0x0

    goto/16 :goto_3c

    :goto_10
    const/4 v11, 0x0

    :goto_11
    :try_start_e
    invoke-virtual/range {v23 .. v23}, Lﹶﾞ/ᵎʻ;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v5

    invoke-virtual {v5}, Lﹶﾞ/ﹳـ;->ʼᵢ()Lﹶﾞ/ʼˈ;

    move-result-object v5

    const-string v7, "Error querying bundles. appId"

    invoke-static {v6}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v8

    invoke-virtual {v5, v8, v0, v7}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-eqz v11, :cond_2

    goto/16 :goto_2

    :goto_12
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_3b

    :cond_e
    sget-object v0, Lcom/google/android/gms/internal/measurement/ʽˋ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʽˋ;

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/ʽˋ;->ʾˋ:Lˆʽ/ᵔʾ;

    iget-object v5, v5, Lˆʽ/ᵔʾ;->ʾˋ:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/measurement/יﾞ;

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᴵʼ()Lﹶﾞ/ᵎﹶ;

    move-result-object v5

    sget-object v7, Lﹶﾞ/ᴵᵔ;->ˊﹳ:Lﹶﾞ/ˈٴ;

    const/4 v8, 0x0

    invoke-virtual {v5, v8, v7}, Lﹶﾞ/ᵎﹶ;->ˎˉ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)Z

    move-result v5

    const-string v9, "_f"

    sget-object v10, Lﹶﾞ/ⁱˉ;->ʽʽ:Lﹶﾞ/ⁱˉ;

    if-eqz v5, :cond_24

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ʽˋ;->ʾˋ:Lˆʽ/ᵔʾ;

    iget-object v0, v0, Lˆʽ/ᵔʾ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/יﾞ;

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᴵʼ()Lﹶﾞ/ᵎﹶ;

    move-result-object v0

    invoke-virtual {v0, v8, v7}, Lﹶﾞ/ᵎﹶ;->ˎˉ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual/range {p0 .. p1}, Lﹶﾞ/ᵢי;->ﹳٴ(Ljava/lang/String;)Lﹶﾞ/ᐧˎ;

    move-result-object v0

    invoke-virtual {v0, v10}, Lﹶﾞ/ᐧˎ;->ʼˎ(Lﹶﾞ/ⁱˉ;)Z

    move-result v0

    const-string v5, "no_data_mode_events"

    if-nez v0, :cond_14

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ʻᵎ()Lﹶﾞ/ـﹶ;

    move-result-object v0

    invoke-virtual {v0, v6}, Lﹶﾞ/ـﹶ;->יˉ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lﹶﾞ/ᴵᵔ;->ʽʾ:Lﹶﾞ/ˈٴ;

    invoke-virtual {v0, v8}, Lﹶﾞ/ˈٴ;->ﹳٴ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_f
    :goto_13
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    :try_start_f
    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ˊᵔ()Lﹶﾞ/ˉʿ;

    move-result-object v11

    iget-object v12, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lﹶﾞ/ˉʿ;->ˑˆ(J)V

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ᐧⁱ()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_10
    :goto_14
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ٴʿ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ٴʿ;->יـ()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ٴʿ;->יـ()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_11

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ٴʿ;->יـ()Ljava/lang/String;

    move-result-object v12

    const-string v13, "_v"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    :cond_11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ʼˎ()Lcom/google/android/gms/internal/measurement/ﹳᴵ;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ᵔⁱ;

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹶᐧ()Lﹶﾞ/ʿ;

    const-string v12, "_dac"

    const-wide/16 v13, 0x1

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-static {v0, v12, v13}, Lﹶﾞ/ʿ;->ﾞˋ(Lcom/google/android/gms/internal/measurement/ᵔⁱ;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ٴʿ;

    :cond_12
    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ˊᵔ()Lﹶﾞ/ˉʿ;

    move-result-object v12

    invoke-virtual {v12}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    invoke-virtual {v12}, Lﹶﾞ/ˎᵎ;->ﹶˎ()V

    invoke-static {v6}, Lٴﾞ/ʻٴ;->ʽ(Ljava/lang/String;)V

    iget-object v13, v12, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v13, Lﹶﾞ/ᵎʻ;

    invoke-virtual {v13}, Lﹶﾞ/ᵎʻ;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v14

    invoke-virtual {v14}, Lﹶﾞ/ﹳـ;->ˈـ()Lﹶﾞ/ʼˈ;

    move-result-object v14

    const-string v15, "Caching events in NO_DATA mode"

    invoke-virtual {v14, v0, v15}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    const-string v15, "app_id"

    invoke-virtual {v14, v15, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v15, "name"

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/measurement/ٴʿ;->יـ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/measurement/ﾞי;->ﹳٴ()[B

    move-result-object v0

    invoke-virtual {v14, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v0, "timestamp_millis"

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/measurement/ٴʿ;->ʽﹳ()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v0, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_b

    :try_start_10
    invoke-virtual {v12}, Lﹶﾞ/ˉʿ;->יⁱ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v15, 0x0

    invoke-virtual {v0, v5, v15, v14}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v16

    cmp-long v0, v16, v24

    if-nez v0, :cond_10

    invoke-virtual {v13}, Lﹶﾞ/ᵎʻ;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v0

    invoke-virtual {v0}, Lﹶﾞ/ﹳـ;->ʼᵢ()Lﹶﾞ/ʼˈ;

    move-result-object v0

    const-string v13, "Failed to insert NO_DATA mode event (got -1). appId"

    invoke-static {v6}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v14

    invoke-virtual {v0, v14, v13}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_a

    goto/16 :goto_14

    :catch_a
    move-exception v0

    :try_start_11
    iget-object v12, v12, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v12, Lﹶﾞ/ᵎʻ;

    invoke-virtual {v12}, Lﹶﾞ/ᵎʻ;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v12

    invoke-virtual {v12}, Lﹶﾞ/ﹳـ;->ʼᵢ()Lﹶﾞ/ʼˈ;

    move-result-object v12

    const-string v13, "Error storing NO_DATA mode event. appId"

    invoke-static {v6}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v14

    invoke-virtual {v12, v14, v0, v13}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_b

    goto/16 :goto_14

    :catch_b
    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v0

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ᵎˊ:Lﹶﾞ/ʼˈ;

    const-string v11, "Failed handling NO_DATA mode bundles. appId"

    invoke-virtual {v0, v6, v11}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_13

    :cond_13
    sget-object v12, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto/16 :goto_23

    :cond_14
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ˊᵔ()Lﹶﾞ/ˉʿ;

    move-result-object v0

    iget-object v8, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v8, Lﹶﾞ/ᵎʻ;

    invoke-static {v6}, Lٴﾞ/ʻٴ;->ʽ(Ljava/lang/String;)V

    invoke-virtual {v0}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    invoke-virtual {v0}, Lﹶﾞ/ˎᵎ;->ﹶˎ()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const-string v13, " NO_DATA mode events. appId"

    const-string v14, "Pruned "

    :try_start_12
    invoke-virtual {v0}, Lﹶﾞ/ˉʿ;->יⁱ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v22

    invoke-virtual {v8}, Lﹶﾞ/ᵎʻ;->ᵎˊ()Lᵎᴵ/ﹳٴ;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    const-string v23, "no_data_mode_events"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v24

    const-string v25, "app_id=? AND timestamp_millis <= CAST(? AS INTEGER)"

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v6, v0}, [Ljava/lang/String;

    move-result-object v26

    const-string v29, "rowid"

    const/16 v30, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-virtual/range {v22 .. v30}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_11
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    move-object/from16 v17, v8

    move-object/from16 v8, v22

    :try_start_13
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_10
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    if-eqz v0, :cond_16

    move-object/from16 v22, v12

    :goto_15
    const/4 v12, 0x0

    :try_start_14
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/ٴʿ;->ᵢˏ()Lcom/google/android/gms/internal/measurement/ᵔⁱ;

    move-result-object v12

    invoke-static {v12, v0}, Lﹶﾞ/ʿ;->ʻˆ(Lcom/google/android/gms/internal/measurement/ﹳᴵ;[B)Lcom/google/android/gms/internal/measurement/ﹳᴵ;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ᵔⁱ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ٴʿ;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_14
    .catch Lcom/google/android/gms/internal/measurement/zzmr; {:try_start_14 .. :try_end_14} :catch_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_c
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    move-object/from16 v23, v4

    move-object/from16 v24, v11

    goto :goto_16

    :catchall_2
    move-exception v0

    move-object/from16 v23, v4

    goto/16 :goto_18

    :catch_c
    move-exception v0

    move-object/from16 v23, v4

    goto/16 :goto_1b

    :catch_d
    move-exception v0

    :try_start_15
    invoke-virtual/range {v17 .. v17}, Lﹶﾞ/ᵎʻ;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v12

    iget-object v12, v12, Lﹶﾞ/ﹳـ;->ᵎˊ:Lﹶﾞ/ʼˈ;
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_15} :catch_c
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    move-object/from16 v23, v4

    :try_start_16
    const-string v4, "Failed to parse stored NO_DATA mode event, appId"

    move-object/from16 v24, v11

    invoke-static {v6}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v11

    invoke-virtual {v12, v11, v0, v4}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_16
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V
    :try_end_16
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_16} :catch_f
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    :try_start_17
    const-string v0, "app_id=? AND timestamp_millis <= CAST(? AS INTEGER)"

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v6, v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-virtual/range {v17 .. v17}, Lﹶﾞ/ᵎʻ;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v4

    invoke-virtual {v4}, Lﹶﾞ/ﹳـ;->ˈـ()Lﹶﾞ/ʼˈ;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x22

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17 .. :try_end_17} :catch_e
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    goto :goto_17

    :catchall_3
    move-exception v0

    goto :goto_19

    :catch_e
    move-exception v0

    goto :goto_1a

    :catchall_4
    move-exception v0

    goto :goto_18

    :catch_f
    move-exception v0

    goto :goto_1b

    :cond_15
    move-object/from16 v4, v23

    move-object/from16 v11, v24

    goto/16 :goto_15

    :cond_16
    move-object/from16 v23, v4

    move-object/from16 v24, v11

    move-object/from16 v22, v12

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    :goto_17
    move-object/from16 v11, v24

    goto :goto_1c

    :goto_18
    move-object/from16 v14, v23

    goto/16 :goto_22

    :catch_10
    move-exception v0

    move-object/from16 v23, v4

    move-object/from16 v22, v12

    goto :goto_1b

    :catch_11
    move-exception v0

    move-object/from16 v17, v8

    move-object/from16 v22, v12

    goto :goto_1a

    :goto_19
    const/4 v14, 0x0

    goto/16 :goto_22

    :goto_1a
    const/16 v23, 0x0

    :goto_1b
    :try_start_18
    invoke-virtual/range {v17 .. v17}, Lﹶﾞ/ᵎʻ;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v4

    invoke-virtual {v4}, Lﹶﾞ/ﹳـ;->ʼᵢ()Lﹶﾞ/ʼˈ;

    move-result-object v4

    const-string v5, "Error flushing NO_DATA mode events. appId"

    invoke-static {v6}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v8

    invoke-virtual {v4, v8, v0, v5}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v11, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    if-eqz v23, :cond_17

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    :cond_17
    :goto_1c
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x1

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v8, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ʼˎ()Lcom/google/android/gms/internal/measurement/ﹳᴵ;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/ʽʾ;

    if-eqz v4, :cond_18

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_18

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/ʽʾ;->ʿ()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v12, v8, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v12, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ᵎᵔ()V

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v12, v8, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v12, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v12, v11}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʿᵢ(Ljava/lang/Iterable;)V

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v12, v8, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v12, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʿᵢ(Ljava/lang/Iterable;)V

    const/4 v4, 0x0

    :cond_18
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ᵢˋ;->ᵔﹳ()Lcom/google/android/gms/internal/measurement/ˑˆ;

    move-result-object v12

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ʻᵎ()Lﹶﾞ/ـﹶ;

    move-result-object v13

    invoke-virtual {v13, v6}, Lﹶﾞ/ـﹶ;->ˏⁱ(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ᐧˎ;

    move-result-object v13

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    if-nez v13, :cond_1a

    :cond_19
    move-object/from16 v16, v0

    move/from16 v22, v4

    move-object/from16 v17, v11

    goto/16 :goto_21

    :cond_1a
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/ᐧˎ;->ʼᐧ()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1e
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_19

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/internal/measurement/ʽⁱ;

    move-object/from16 v16, v0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/ﹳᵢ;->ʼᐧ()Lcom/google/android/gms/internal/measurement/ˎˉ;

    move-result-object v0

    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/ʽⁱ;->ʼᐧ()I

    move-result v17

    move/from16 v22, v4

    add-int/lit8 v4, v17, -0x1

    move-object/from16 v17, v11

    const/4 v11, 0x1

    if-eq v4, v11, :cond_1e

    const/4 v11, 0x2

    if-eq v4, v11, :cond_1d

    const/4 v11, 0x4

    move-object/from16 v24, v13

    const/4 v13, 0x3

    if-eq v4, v13, :cond_1c

    if-eq v4, v11, :cond_1b

    const/4 v4, 0x1

    goto :goto_1f

    :cond_1b
    const/4 v4, 0x5

    goto :goto_1f

    :cond_1c
    move v4, v11

    goto :goto_1f

    :cond_1d
    move-object/from16 v24, v13

    const/4 v13, 0x3

    move v4, v13

    goto :goto_1f

    :cond_1e
    move-object/from16 v24, v13

    const/4 v13, 0x3

    const/4 v4, 0x2

    :goto_1f
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/measurement/ˎˉ;->ˆʾ(I)V

    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/ʽⁱ;->ﹳᐧ()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/4 v11, 0x1

    if-eq v4, v11, :cond_1f

    const/4 v11, 0x2

    if-eq v4, v11, :cond_20

    const/4 v13, 0x1

    goto :goto_20

    :cond_1f
    const/4 v13, 0x2

    :cond_20
    :goto_20
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/measurement/ˎˉ;->ٴﹶ(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ﹳᵢ;

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v16

    move-object/from16 v11, v17

    move/from16 v4, v22

    move-object/from16 v13, v24

    goto :goto_1e

    :goto_21
    invoke-virtual {v12, v14}, Lcom/google/android/gms/internal/measurement/ˑˆ;->ˆʾ(Ljava/util/ArrayList;)V

    invoke-virtual {v8, v12}, Lcom/google/android/gms/internal/measurement/ʽʾ;->ᵎⁱ(Lcom/google/android/gms/internal/measurement/ˑˆ;)V

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ˆˑ;

    iget-object v4, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-static {v0, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v16

    move-object/from16 v11, v17

    move/from16 v4, v22

    goto/16 :goto_1d

    :cond_21
    move-object v12, v7

    goto :goto_23

    :goto_22
    if-eqz v14, :cond_22

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_22
    throw v0

    :cond_23
    move-object/from16 v22, v12

    :goto_23
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4f

    goto :goto_24

    :cond_24
    move-object/from16 v22, v12

    :goto_24
    invoke-virtual/range {p0 .. p1}, Lﹶﾞ/ᵢי;->ﹳٴ(Ljava/lang/String;)Lﹶﾞ/ᐧˎ;

    move-result-object v0

    sget-object v4, Lﹶﾞ/ⁱˉ;->ᴵˊ:Lﹶﾞ/ⁱˉ;

    invoke-virtual {v0, v4}, Lﹶﾞ/ᐧˎ;->ʼˎ(Lﹶﾞ/ⁱˉ;)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʻٴ()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_25

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʻٴ()Ljava/lang/String;

    move-result-object v0

    goto :goto_25

    :cond_26
    const/4 v0, 0x0

    :goto_25
    if-eqz v0, :cond_29

    const/4 v8, 0x0

    :goto_26
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v5

    if-ge v8, v5, :cond_29

    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʻٴ()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_28

    :cond_27
    const/4 v5, 0x0

    goto :goto_27

    :cond_28
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʻٴ()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_27

    const/4 v5, 0x0

    invoke-interface {v12, v5, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v12

    goto :goto_28

    :goto_27
    add-int/lit8 v8, v8, 0x1

    goto :goto_26

    :cond_29
    const/4 v5, 0x0

    :goto_28
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ˊﹳ;->ـˆ()Lcom/google/android/gms/internal/measurement/ˏⁱ;

    move-result-object v0

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v11

    invoke-direct {v8, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᴵʼ()Lﹶﾞ/ᵎﹶ;

    move-result-object v11

    invoke-virtual {v11, v6}, Lﹶﾞ/ᵎﹶ;->ﹶˎ(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2a

    invoke-virtual/range {p0 .. p1}, Lﹶﾞ/ᵢי;->ﹳٴ(Ljava/lang/String;)Lﹶﾞ/ᐧˎ;

    move-result-object v11

    invoke-virtual {v11, v4}, Lﹶﾞ/ᐧˎ;->ʼˎ(Lﹶﾞ/ⁱˉ;)Z

    move-result v11

    if-eqz v11, :cond_2a

    const/4 v11, 0x1

    goto :goto_29

    :cond_2a
    move v11, v5

    :goto_29
    invoke-virtual/range {p0 .. p1}, Lﹶﾞ/ᵢי;->ﹳٴ(Ljava/lang/String;)Lﹶﾞ/ᐧˎ;

    move-result-object v13

    invoke-virtual {v13, v4}, Lﹶﾞ/ᐧˎ;->ʼˎ(Lﹶﾞ/ⁱˉ;)Z

    move-result v4

    invoke-virtual/range {p0 .. p1}, Lﹶﾞ/ᵢי;->ﹳٴ(Ljava/lang/String;)Lﹶﾞ/ᐧˎ;

    move-result-object v13

    invoke-virtual {v13, v10}, Lﹶﾞ/ᐧˎ;->ʼˎ(Lﹶﾞ/ⁱˉ;)Z

    move-result v10

    sget-object v13, Lcom/google/android/gms/internal/measurement/ʾ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʾ;

    iget-object v13, v13, Lcom/google/android/gms/internal/measurement/ʾ;->ʾˋ:Lˆʽ/ᵔʾ;

    iget-object v13, v13, Lˆʽ/ᵔʾ;->ʾˋ:Ljava/lang/Object;

    check-cast v13, Lcom/google/android/gms/internal/measurement/ⁱⁱ;

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᴵʼ()Lﹶﾞ/ᵎﹶ;

    move-result-object v13

    sget-object v14, Lﹶﾞ/ᴵᵔ;->ﹶˎ:Lﹶﾞ/ˈٴ;

    invoke-virtual {v13, v6, v14}, Lﹶﾞ/ᵎﹶ;->ˎˉ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)Z

    move-result v13

    iget-object v14, v1, Lﹶﾞ/ᵢי;->ٴʼ:Lﹶﾞ/ᐧˏ;

    invoke-virtual {v14, v6}, Lﹶﾞ/ᐧˏ;->ﹶˎ(Ljava/lang/String;)Lﹶﾞ/ʾˏ;

    move-result-object v15

    move/from16 v16, v4

    :goto_2a
    iget-object v4, v1, Lﹶﾞ/ᵢי;->ᵔי:Lﹶﾞ/ᵎʻ;

    if-ge v5, v7, :cond_3c

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v22, v4

    move-object/from16 v4, v17

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ʼˎ()Lcom/google/android/gms/internal/measurement/ﹳᴵ;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/ʽʾ;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move/from16 v23, v5

    move-object/from16 v5, v17

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᴵʼ()Lﹶﾞ/ᵎﹶ;

    move-result-object v5

    invoke-virtual {v5}, Lﹶﾞ/ᵎﹶ;->יˉ()V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ʽʾ;->ـˆ()V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v5, v4, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v5, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v5, v2, v3}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʻᵎ(J)V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ʽʾ;->ˆﾞ()V

    if-nez v11, :cond_2b

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v5, v4, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v5, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ﾞˋ()V

    :cond_2b
    if-nez v16, :cond_2c

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v5, v4, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v5, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʻˆ()V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v5, v4, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v5, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ˆˑ;->יⁱ()V

    :cond_2c
    if-nez v10, :cond_2d

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v5, v4, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v5, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ⁱʾ()V

    :cond_2d
    invoke-virtual {v1, v4, v6}, Lﹶﾞ/ᵢי;->יـ(Lcom/google/android/gms/internal/measurement/ʽʾ;Ljava/lang/String;)V

    if-nez v13, :cond_2e

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v5, v4, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v5, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ˋـ()V

    :cond_2e
    if-nez v10, :cond_2f

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v5, v4, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v5, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʿˎ()V

    :cond_2f
    iget-object v5, v4, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v5, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʻٴ()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_31

    move/from16 v17, v7

    const-string v7, "00000000-0000-0000-0000-000000000000"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    goto :goto_2b

    :cond_30
    move/from16 v26, v10

    move/from16 v28, v11

    move-object/from16 v27, v12

    move/from16 v29, v13

    goto/16 :goto_2e

    :cond_31
    move/from16 v17, v7

    :goto_2b
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ʽʾ;->ʿ()Ljava/util/List;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object/from16 v25, v7

    move/from16 v26, v10

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    :goto_2c
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_36

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    move/from16 v28, v11

    move-object/from16 v11, v27

    check-cast v11, Lcom/google/android/gms/internal/measurement/ٴʿ;

    move-object/from16 v27, v12

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/ٴʿ;->יـ()Ljava/lang/String;

    move-result-object v12

    move/from16 v29, v13

    const-string v13, "_fx"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_32

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->remove()V

    move-object/from16 v12, v27

    move/from16 v11, v28

    move/from16 v13, v29

    const/16 v22, 0x1

    :goto_2d
    const/16 v24, 0x1

    goto :goto_2c

    :cond_32
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/ٴʿ;->יـ()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_35

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹶᐧ()Lﹶﾞ/ʿ;

    const-string v12, "_pfo"

    invoke-static {v11, v12}, Lﹶﾞ/ʿ;->ˎʾ(Lcom/google/android/gms/internal/measurement/ٴʿ;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ˊﾞ;

    move-result-object v12

    if-eqz v12, :cond_33

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ˊﾞ;->ʽﹳ()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    :cond_33
    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹶᐧ()Lﹶﾞ/ʿ;

    const-string v12, "_uwa"

    invoke-static {v11, v12}, Lﹶﾞ/ʿ;->ˎʾ(Lcom/google/android/gms/internal/measurement/ٴʿ;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ˊﾞ;

    move-result-object v11

    if-eqz v11, :cond_34

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/ˊﾞ;->ʽﹳ()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    :cond_34
    move-object/from16 v12, v27

    move/from16 v11, v28

    move/from16 v13, v29

    goto :goto_2d

    :cond_35
    move-object/from16 v12, v27

    move/from16 v11, v28

    move/from16 v13, v29

    goto :goto_2c

    :cond_36
    move/from16 v28, v11

    move-object/from16 v27, v12

    move/from16 v29, v13

    if-eqz v22, :cond_37

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v11, v4, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v11, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ᵎᵔ()V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v11, v4, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v11, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʿᵢ(Ljava/lang/Iterable;)V

    :cond_37
    if-eqz v24, :cond_38

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ʽʾ;->יـ()Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x1

    invoke-virtual {v1, v5, v11, v7, v10}, Lﹶﾞ/ᵢי;->ᵔﹳ(Ljava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V

    :cond_38
    :goto_2e
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ʽʾ;->ʿᵢ()I

    move-result v5

    if-nez v5, :cond_39

    goto :goto_2f

    :cond_39
    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᴵʼ()Lﹶﾞ/ᵎﹶ;

    move-result-object v5

    sget-object v7, Lﹶﾞ/ᴵᵔ;->ـˊ:Lﹶﾞ/ˈٴ;

    invoke-virtual {v5, v6, v7}, Lﹶﾞ/ᵎﹶ;->ˎˉ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ﾞי;->ﹳٴ()[B

    move-result-object v5

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹶᐧ()Lﹶﾞ/ʿ;

    move-result-object v7

    invoke-virtual {v7, v5}, Lﹶﾞ/ʿ;->ˑﹶ([B)J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Lcom/google/android/gms/internal/measurement/ʽʾ;->ـˏ(J)V

    :cond_3a
    invoke-virtual {v15}, Lﹶﾞ/ʾˏ;->ⁱˊ()Lcom/google/android/gms/internal/measurement/ᵢᐧ;

    move-result-object v5

    if-eqz v5, :cond_3b

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/ʽʾ;->ˊʻ(Lcom/google/android/gms/internal/measurement/ᵢᐧ;)V

    :cond_3b
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v5, Lcom/google/android/gms/internal/measurement/ˊﹳ;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/measurement/ˊﹳ;->ᵢˏ(Lcom/google/android/gms/internal/measurement/ˆˑ;)V

    :goto_2f
    add-int/lit8 v5, v23, 0x1

    move/from16 v7, v17

    move/from16 v10, v26

    move-object/from16 v12, v27

    move/from16 v11, v28

    move/from16 v13, v29

    goto/16 :goto_2a

    :cond_3c
    move-object/from16 v22, v4

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v4, Lcom/google/android/gms/internal/measurement/ˊﹳ;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ˊﹳ;->ᵔﹳ()I

    move-result v4

    if-nez v4, :cond_3d

    invoke-virtual {v1, v8}, Lﹶﾞ/ᵢי;->ﾞʻ(Ljava/util/ArrayList;)V

    const/4 v5, 0x0

    sget-object v7, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v2, 0x0

    const/16 v3, 0xcc

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v7}, Lﹶﾞ/ᵢי;->ʻٴ(ZILjava/lang/Throwable;[BLjava/lang/String;Ljava/util/List;)V

    return-void

    :cond_3d
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/ˊﹳ;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v15, Lﹶﾞ/ʾˏ;->ʽ:Lﹶﾞ/ˋـ;

    sget-object v9, Lﹶﾞ/ˋـ;->ᴵᵔ:Lﹶﾞ/ˋـ;

    if-ne v5, v9, :cond_3e

    const/4 v9, 0x1

    goto :goto_30

    :cond_3e
    const/4 v9, 0x0

    :goto_30
    sget-object v10, Lﹶﾞ/ˋـ;->ˈٴ:Lﹶﾞ/ˋـ;

    if-eq v5, v10, :cond_40

    if-eqz v9, :cond_3f

    const/4 v11, 0x1

    goto :goto_31

    :cond_3f
    const/4 v13, 0x0

    goto/16 :goto_39

    :cond_40
    move v11, v9

    :goto_31
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/ˊﹳ;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ˊﹳ;->ʼᐧ()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_41
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_42

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ᵔٴ()Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_32

    :cond_42
    const/4 v4, 0x0

    :goto_32
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/ˊﹳ;

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v9

    invoke-virtual {v9}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ʻˋ()V

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/ˊﹳ;->ʾᵎ(Lcom/google/android/gms/internal/measurement/ˊﹳ;)Lcom/google/android/gms/internal/measurement/ˏⁱ;

    move-result-object v9

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_43

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v10, v9, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v10, Lcom/google/android/gms/internal/measurement/ˊﹳ;

    invoke-virtual {v10, v4}, Lcom/google/android/gms/internal/measurement/ˊﹳ;->ʽʽ(Ljava/lang/String;)V

    :cond_43
    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ʻᵎ()Lﹶﾞ/ـﹶ;

    move-result-object v10

    invoke-virtual {v10, v6}, Lﹶﾞ/ـﹶ;->ˋـ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_44

    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/measurement/ˏⁱ;->ٴﹶ(Ljava/lang/String;)V

    :cond_44
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ˊﹳ;->ʼᐧ()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_33
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_45

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ˈⁱ(Lcom/google/android/gms/internal/measurement/ˆˑ;)Lcom/google/android/gms/internal/measurement/ʽʾ;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v13, v12, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v13, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ﾞˋ()V

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_33

    :cond_45
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v5, v9, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v5, Lcom/google/android/gms/internal/measurement/ˊﹳ;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ˊﹳ;->ᴵˊ()V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v5, v9, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v5, Lcom/google/android/gms/internal/measurement/ˊﹳ;

    invoke-virtual {v5, v10}, Lcom/google/android/gms/internal/measurement/ˊﹳ;->ʾˋ(Ljava/util/ArrayList;)V

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v5

    invoke-virtual {v5}, Lﹶﾞ/ﹳـ;->ˈـ()Lﹶﾞ/ʼˈ;

    move-result-object v5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_46

    const-string v10, "null"

    goto :goto_34

    :cond_46
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/ˏⁱ;->ˆʾ()Ljava/lang/String;

    move-result-object v10

    :goto_34
    const-string v12, "[sgtm] Processed MeasurementBatch for sGTM with sgtmJoinId: "

    invoke-virtual {v5, v10, v12}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/ˊﹳ;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4b

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ˊﹳ;

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v9

    invoke-virtual {v9}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ʻˋ()V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/ˊﹳ;->ـˆ()Lcom/google/android/gms/internal/measurement/ˏⁱ;

    move-result-object v9

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v10

    invoke-virtual {v10}, Lﹶﾞ/ﹳـ;->ˈـ()Lﹶﾞ/ʼˈ;

    move-result-object v10

    const-string v12, "[sgtm] Processing Google Signal, sgtmJoinId:"

    invoke-virtual {v10, v4, v12}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v10, v9, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v10, Lcom/google/android/gms/internal/measurement/ˊﹳ;

    invoke-virtual {v10, v4}, Lcom/google/android/gms/internal/measurement/ˊﹳ;->ʽʽ(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ˊﹳ;->ʼᐧ()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ﹳـ()Lcom/google/android/gms/internal/measurement/ʽʾ;

    move-result-object v10

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ˈʿ()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v13, v10, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v13, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v13, v12}, Lcom/google/android/gms/internal/measurement/ˆˑ;->יˉ(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ـᵢ()I

    move-result v4

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v12, v10, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v12, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʽʾ(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v4, v9, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v4, Lcom/google/android/gms/internal/measurement/ˊﹳ;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v4, v10}, Lcom/google/android/gms/internal/measurement/ˊﹳ;->ᵢˏ(Lcom/google/android/gms/internal/measurement/ˆˑ;)V

    goto :goto_35

    :cond_47
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ˊﹳ;

    iget-object v4, v14, Lﹶﾞ/ˏʻ;->ᴵˊ:Lﹶﾞ/ᵢי;

    invoke-virtual {v4}, Lﹶﾞ/ᵢי;->ʻᵎ()Lﹶﾞ/ـﹶ;

    move-result-object v4

    invoke-virtual {v4, v6}, Lﹶﾞ/ـﹶ;->ˋـ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    sget-object v10, Lﹶﾞ/ˋـ;->ʽʽ:Lﹶﾞ/ˋـ;

    sget-object v12, Lﹶﾞ/ˋـ;->ˊʻ:Lﹶﾞ/ˋـ;

    if-nez v9, :cond_49

    sget-object v9, Lﹶﾞ/ᴵᵔ;->יـ:Lﹶﾞ/ˈٴ;

    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lﹶﾞ/ˈٴ;->ﹳٴ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v13

    invoke-virtual {v9}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    const/16 v18, 0x1

    add-int/lit8 v14, v14, 0x1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    new-instance v6, Ljava/lang/StringBuilder;

    add-int v14, v14, v16

    invoke-direct {v6, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    new-instance v4, Lﹶﾞ/ʾˏ;

    invoke-virtual {v13}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz v11, :cond_48

    move-object v10, v12

    :cond_48
    sget-object v9, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    const/4 v13, 0x0

    invoke-direct {v4, v6, v9, v10, v13}, Lﹶﾞ/ʾˏ;-><init>(Ljava/lang/String;Ljava/util/Map;Lﹶﾞ/ˋـ;Lcom/google/android/gms/internal/measurement/ᵢᐧ;)V

    goto :goto_36

    :cond_49
    const/4 v13, 0x0

    new-instance v4, Lﹶﾞ/ʾˏ;

    sget-object v6, Lﹶﾞ/ᴵᵔ;->יـ:Lﹶﾞ/ˈٴ;

    invoke-virtual {v6, v13}, Lﹶﾞ/ˈٴ;->ﹳٴ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v11, :cond_4a

    move-object v10, v12

    :cond_4a
    sget-object v9, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-direct {v4, v6, v9, v10, v13}, Lﹶﾞ/ʾˏ;-><init>(Ljava/lang/String;Ljava/util/Map;Lﹶﾞ/ˋـ;Lcom/google/android/gms/internal/measurement/ᵢᐧ;)V

    :goto_36
    invoke-static {v0, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_37

    :cond_4b
    const/4 v13, 0x0

    :goto_37
    if-eqz v11, :cond_4d

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ʼˎ()Lcom/google/android/gms/internal/measurement/ﹳᴵ;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ˏⁱ;

    const/4 v4, 0x0

    :goto_38
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ˊﹳ;->ᵔﹳ()I

    move-result v6

    if-ge v4, v6, :cond_4c

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/measurement/ˊﹳ;->ﹳᐧ(I)Lcom/google/android/gms/internal/measurement/ˆˑ;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ʼˎ()Lcom/google/android/gms/internal/measurement/ﹳᴵ;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/ʽʾ;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ʽʾ;->ᴵʼ()V

    invoke-virtual {v6, v2, v3}, Lcom/google/android/gms/internal/measurement/ʽʾ;->ٴᵢ(J)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v9, Lcom/google/android/gms/internal/measurement/ˊﹳ;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v9, v4, v6}, Lcom/google/android/gms/internal/measurement/ˊﹳ;->ʼʼ(ILcom/google/android/gms/internal/measurement/ˆˑ;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    :cond_4c
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ˊﹳ;

    invoke-static {v0, v15}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v8}, Lﹶﾞ/ᵢי;->ﾞʻ(Ljava/util/ArrayList;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/16 v3, 0xcc

    move-object/from16 v6, p1

    invoke-virtual/range {v1 .. v7}, Lﹶﾞ/ᵢי;->ʻٴ(ZILjava/lang/Throwable;[BLjava/lang/String;Ljava/util/List;)V

    invoke-virtual {v15}, Lﹶﾞ/ʾˏ;->ﹳٴ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Lﹶﾞ/ᵢי;->ˉˆ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v0

    invoke-virtual {v0}, Lﹶﾞ/ﹳـ;->ˈـ()Lﹶﾞ/ʼˈ;

    move-result-object v0

    const-string v2, "[sgtm] Sending sgtm batches available notification to app"

    invoke-virtual {v0, v6, v2}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.google.android.gms.measurement.BATCHES_AVAILABLE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual/range {v22 .. v22}, Lﹶﾞ/ᵎʻ;->ـˆ()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lﹶﾞ/ᵢי;->ʼˈ(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    :cond_4d
    move-object/from16 v6, p1

    move-object v4, v5

    :goto_39
    iget-object v0, v1, Lﹶﾞ/ᵢי;->ᴵˊ:Lﹶﾞ/ʿ;

    invoke-static {v0}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v0}, Lﹶﾞ/ʿ;->ـʻ()Z

    move-result v5

    if-eqz v5, :cond_4f

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v5

    invoke-virtual {v5}, Lﹶﾞ/ﹳـ;->ˎˉ()Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x2

    invoke-static {v5, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4e

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹶᐧ()Lﹶﾞ/ʿ;

    move-result-object v5

    invoke-virtual {v5, v4}, Lﹶﾞ/ʿ;->ˆˎ(Lcom/google/android/gms/internal/measurement/ˊﹳ;)Ljava/lang/String;

    move-result-object v14

    goto :goto_3a

    :cond_4e
    move-object v14, v13

    :goto_3a
    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹶᐧ()Lﹶﾞ/ʿ;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ﾞי;->ﹳٴ()[B

    move-result-object v5

    invoke-virtual {v1, v8}, Lﹶﾞ/ᵢי;->ﾞʻ(Ljava/util/ArrayList;)V

    iget-object v8, v1, Lﹶﾞ/ᵢי;->ᵎⁱ:Lﹶﾞ/ˆˎ;

    iget-object v8, v8, Lﹶﾞ/ˆˎ;->ᵎⁱ:Lⁱי/ʻᵎ;

    invoke-virtual {v8, v2, v3}, Lⁱי/ʻᵎ;->ᵔᵢ(J)V

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v2

    invoke-virtual {v2}, Lﹶﾞ/ﹳـ;->ˈـ()Lﹶﾞ/ʼˈ;

    move-result-object v2

    array-length v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "Uploading data. app, uncompressed size, data"

    invoke-virtual {v2, v5, v6, v3, v14}, Lﹶﾞ/ʼˈ;->ˈ(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v11, 0x1

    iput-boolean v11, v1, Lﹶﾞ/ᵢי;->ﹳـ:Z

    invoke-static {v0}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    new-instance v2, Lᵢ/ﹳٴ;

    const/16 v3, 0x18

    invoke-direct {v2, v1, v6, v7, v3}, Lᵢ/ﹳٴ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v6, v15, v4, v2}, Lﹶﾞ/ʿ;->ˎـ(Ljava/lang/String;Lﹶﾞ/ʾˏ;Lcom/google/android/gms/internal/measurement/ˊﹳ;Lﹶﾞ/ᴵˑ;)V

    :cond_4f
    :goto_3b
    return-void

    :goto_3c
    if-eqz v14, :cond_50

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_50
    throw v0
.end method

.method public final ᵔٴ()V
    .locals 5

    .prologue
    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v0

    invoke-virtual {v0}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    iget-boolean v0, p0, Lﹶﾞ/ᵢי;->ـˏ:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lﹶﾞ/ᵢי;->ﹳـ:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lﹶﾞ/ᵢי;->ˈⁱ:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v0

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v1, "Stopping uploading service(s)"

    invoke-virtual {v0, v1}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    iget-object v0, p0, Lﹶﾞ/ᵢי;->ˑٴ:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lﹶﾞ/ᵢי;->ˑٴ:Ljava/util/ArrayList;

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v0

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    iget-boolean v1, p0, Lﹶﾞ/ᵢי;->ـˏ:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lﹶﾞ/ᵢי;->ﹳـ:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Lﹶﾞ/ᵢי;->ˈⁱ:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "Not stopping services. fetch, network, upload"

    invoke-virtual {v0, v4, v1, v2, v3}, Lﹶﾞ/ʼˈ;->ˈ(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final ᵔᵢ(Lﹶﾞ/ˏי;Lﹶﾞ/ʻᐧ;)V
    .locals 59

    .prologue
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v3, "metadata_fingerprint"

    const-string v4, "app_id"

    const-string v5, "_fx"

    const-string v6, "events"

    const-string v7, "raw_events"

    const-string v8, "_sno"

    invoke-static {v2}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iget-boolean v9, v2, Lﹶﾞ/ʻᐧ;->ᵔٴ:Z

    iget-wide v10, v2, Lﹶﾞ/ʻᐧ;->ˋᵔ:J

    iget-wide v12, v2, Lﹶﾞ/ʻᐧ;->ˊʻ:J

    iget-object v14, v2, Lﹶﾞ/ʻᐧ;->ʼˈ:Ljava/lang/String;

    move-object v15, v3

    move-object/from16 v16, v4

    iget-wide v3, v2, Lﹶﾞ/ʻᐧ;->ᴵᵔ:J

    move/from16 v17, v9

    move-wide/from16 v18, v10

    iget-wide v9, v2, Lﹶﾞ/ʻᐧ;->ٴʼ:J

    iget-object v11, v2, Lﹶﾞ/ʻᐧ;->ﹳـ:Ljava/lang/String;

    move-object/from16 v20, v15

    iget-object v15, v2, Lﹶﾞ/ʻᐧ;->ʽʽ:Ljava/lang/String;

    move-object/from16 v21, v5

    iget-object v5, v2, Lﹶﾞ/ʻᐧ;->ˈٴ:Ljava/lang/String;

    move-wide/from16 v22, v12

    iget-boolean v12, v2, Lﹶﾞ/ʻᐧ;->ˉٴ:Z

    iget-object v13, v2, Lﹶﾞ/ʻᐧ;->ʾˋ:Ljava/lang/String;

    invoke-static {v13}, Lٴﾞ/ʻٴ;->ʽ(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v41

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v0

    invoke-virtual {v0}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ʻˋ()V

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹶᐧ()Lﹶﾞ/ʿ;

    move/from16 v43, v12

    iget-object v12, v2, Lﹶﾞ/ʻᐧ;->ᴵˊ:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    if-nez v43, :cond_1

    invoke-virtual {v1, v2}, Lﹶﾞ/ᵢי;->ᐧᴵ(Lﹶﾞ/ʻᐧ;)Lﹶﾞ/ʿᵢ;

    return-void

    :cond_1
    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ʻᵎ()Lﹶﾞ/ـﹶ;

    move-result-object v0

    move-object/from16 v45, v12

    move-object/from16 v44, v14

    move-object/from16 v14, p1

    iget-object v12, v14, Lﹶﾞ/ˏי;->ʾˋ:Ljava/lang/String;

    invoke-virtual {v0, v13, v12}, Lﹶﾞ/ـﹶ;->ᵔⁱ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v14, "_err"

    move-wide/from16 v46, v3

    iget-object v3, v1, Lﹶﾞ/ᵢי;->ᵔי:Lﹶﾞ/ᵎʻ;

    iget-object v4, v1, Lﹶﾞ/ᵢי;->ﹶᐧ:Lᐧﹳ/ʽ;

    move-object/from16 v24, v4

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v0

    invoke-virtual {v0}, Lﹶﾞ/ﹳـ;->יˉ()Lﹶﾞ/ʼˈ;

    move-result-object v0

    invoke-static {v13}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v2

    invoke-virtual {v3}, Lﹶﾞ/ᵎʻ;->ˆʾ()Lﹶﾞ/ˑٴ;

    move-result-object v3

    invoke-virtual {v3, v12}, Lﹶﾞ/ˑٴ;->ﹳٴ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Dropping blocked event. appId"

    invoke-virtual {v0, v2, v3, v5}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ʻᵎ()Lﹶﾞ/ـﹶ;

    move-result-object v0

    const-string v2, "measurement.upload.blacklist_internal"

    invoke-virtual {v0, v13, v2}, Lﹶﾞ/ـﹶ;->ʽ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ʻᵎ()Lﹶﾞ/ـﹶ;

    move-result-object v0

    const-string v3, "measurement.upload.blacklist_public"

    invoke-virtual {v0, v13, v3}, Lﹶﾞ/ـﹶ;->ʽ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move-object v12, v13

    goto :goto_0

    :cond_3
    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹳﹳ()Lﹶﾞ/ᵢﹳ;

    const-string v27, "_ev"

    const/16 v29, 0x0

    const/16 v26, 0xb

    move-object/from16 v28, v12

    move-object/from16 v25, v13

    invoke-static/range {v24 .. v29}, Lﹶﾞ/ᵢﹳ;->ٴʿ(Lﹶﾞ/יˑ;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :goto_0
    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ˊᵔ()Lﹶﾞ/ˉʿ;

    move-result-object v0

    invoke-virtual {v0, v12}, Lﹶﾞ/ˉʿ;->ᵢﹳ(Ljava/lang/String;)Lﹶﾞ/ʿᵢ;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, v0, Lﹶﾞ/ʿᵢ;->ﹳٴ:Lﹶﾞ/ᵎʻ;

    iget-object v3, v2, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v3}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    invoke-virtual {v3}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    iget-wide v5, v0, Lﹶﾞ/ʿᵢ;->ʼˈ:J

    iget-object v2, v2, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    invoke-virtual {v2}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    iget-wide v2, v0, Lﹶﾞ/ʿᵢ;->ˊˋ:J

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎˊ()Lᵎᴵ/ﹳٴ;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᴵʼ()Lﹶﾞ/ᵎﹶ;

    sget-object v5, Lﹶﾞ/ᴵᵔ;->ˈʿ:Lﹶﾞ/ˈٴ;

    invoke-virtual {v5, v4}, Lﹶﾞ/ˈٴ;->ﹳٴ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v2

    invoke-virtual {v2}, Lﹶﾞ/ﹳـ;->ﾞˋ()Lﹶﾞ/ʼˈ;

    move-result-object v2

    const-string v3, "Fetching config for blocked app"

    invoke-virtual {v2, v3}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lﹶﾞ/ᵢי;->ʾᵎ(Lﹶﾞ/ʿᵢ;)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    move-object v12, v13

    move-object/from16 v13, v24

    invoke-static/range {p1 .. p1}, Lﹶﾞ/ˈⁱ;->ⁱˊ(Lﹶﾞ/ˏי;)Lﹶﾞ/ˈⁱ;

    move-result-object v0

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹳﹳ()Lﹶﾞ/ᵢﹳ;

    move-result-object v4

    move-object/from16 v31, v13

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᴵʼ()Lﹶﾞ/ᵎﹶ;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v48, v3

    sget-object v3, Lﹶﾞ/ᴵᵔ;->ʿ:Lﹶﾞ/ˈٴ;

    invoke-virtual {v13, v12, v3}, Lﹶﾞ/ᵎﹶ;->ˎʾ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)I

    move-result v3

    const/16 v13, 0x64

    invoke-static {v3, v13}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/16 v13, 0x19

    invoke-static {v3, v13}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v4, v0, v3}, Lﹶﾞ/ᵢﹳ;->ˑˆ(Lﹶﾞ/ˈⁱ;I)V

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᴵʼ()Lﹶﾞ/ᵎﹶ;

    move-result-object v3

    sget-object v4, Lﹶﾞ/ᴵᵔ;->ـﹶ:Lﹶﾞ/ˈٴ;

    const/16 v13, 0x23

    invoke-virtual {v3, v12, v4}, Lﹶﾞ/ᵎﹶ;->ˎʾ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)I

    move-result v3

    invoke-static {v3, v13}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, v0, Lﹶﾞ/ˈⁱ;->ˑﹳ:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    new-instance v13, Ljava/util/TreeSet;

    move-wide/from16 v49, v9

    invoke-virtual {v4}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-direct {v13, v9}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v13}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_6
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v13, "items"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹳﹳ()Lﹶﾞ/ᵢﹳ;

    move-result-object v13

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v10

    invoke-virtual {v13, v10, v3}, Lﹶﾞ/ᵢﹳ;->ˎˉ([Landroid/os/Parcelable;I)V

    goto :goto_2

    :cond_7
    invoke-virtual {v0}, Lﹶﾞ/ˈⁱ;->ʽ()Lﹶﾞ/ˏי;

    move-result-object v3

    iget-object v4, v3, Lﹶﾞ/ˏי;->ᴵˊ:Lﹶﾞ/יـ;

    iget-object v9, v3, Lﹶﾞ/ˏי;->ʾˋ:Ljava/lang/String;

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v0

    invoke-virtual {v0}, Lﹶﾞ/ﹳـ;->ˎˉ()Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x2

    invoke-static {v0, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v0

    invoke-virtual {v0}, Lﹶﾞ/ﹳـ;->ˈـ()Lﹶﾞ/ʼˈ;

    move-result-object v0

    invoke-virtual/range {v48 .. v48}, Lﹶﾞ/ᵎʻ;->ˆʾ()Lﹶﾞ/ˑٴ;

    move-result-object v10

    invoke-virtual {v10, v3}, Lﹶﾞ/ˑٴ;->ˈ(Lﹶﾞ/ˏי;)Ljava/lang/String;

    move-result-object v10

    const-string v13, "Logging event"

    invoke-virtual {v0, v10, v13}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ˊᵔ()Lﹶﾞ/ˉʿ;

    move-result-object v0

    invoke-virtual {v0}, Lﹶﾞ/ˉʿ;->ˎʼ()V

    :try_start_0
    invoke-virtual {v1, v2}, Lﹶﾞ/ᵢי;->ᐧᴵ(Lﹶﾞ/ʻᐧ;)Lﹶﾞ/ʿᵢ;

    const-string v0, "ecommerce_purchase"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v10, "refund"

    if-nez v0, :cond_9

    :try_start_1
    const-string v0, "purchase"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    const/4 v0, 0x1

    goto :goto_3

    :cond_a
    const/4 v0, 0x0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v5, v1

    goto/16 :goto_37

    :goto_3
    const-string v13, "_iap"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v24, v13

    const-string v13, "value"

    if-nez v24, :cond_b

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :cond_b
    move-object/from16 v51, v11

    goto :goto_5

    :cond_c
    move-object/from16 v53, v5

    move-object/from16 v54, v6

    move-object/from16 v51, v11

    move-object/from16 v25, v12

    move-object/from16 v52, v15

    :cond_d
    :goto_4
    move-object/from16 v5, v31

    goto/16 :goto_c

    :goto_5
    :try_start_2
    const-string v11, "_ltv_"

    move-object/from16 v52, v15

    invoke-virtual {v4}, Lﹶﾞ/יـ;->ˈ()Ljava/lang/String;

    move-result-object v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v53, v5

    iget-object v5, v4, Lﹶﾞ/יـ;->ʾˋ:Landroid/os/Bundle;

    if-eqz v0, :cond_10

    :try_start_3
    invoke-virtual {v4}, Lﹶﾞ/יـ;->ⁱˊ()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    const-wide v26, 0x412e848000000000L    # 1000000.0

    mul-double v24, v24, v26

    const-wide/16 v28, 0x0

    cmpl-double v0, v24, v28

    if-nez v0, :cond_e

    move-object/from16 v54, v6

    invoke-virtual {v5, v13}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    long-to-double v5, v5

    mul-double v24, v5, v26

    goto :goto_6

    :cond_e
    move-object/from16 v54, v6

    :goto_6
    const-wide/high16 v5, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v0, v24, v5

    if-gtz v0, :cond_f

    const-wide/high16 v5, -0x3c20000000000000L    # -9.223372036854776E18

    cmpl-double v0, v24, v5

    if-ltz v0, :cond_f

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    neg-long v5, v5

    goto :goto_7

    :cond_f
    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v0

    invoke-virtual {v0}, Lﹶﾞ/ﹳـ;->יˉ()Lﹶﾞ/ʼˈ;

    move-result-object v0

    const-string v2, "Data lost. Currency value is too big. appId"

    invoke-static {v12}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v3

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v2}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ˊᵔ()Lﹶﾞ/ˉʿ;

    move-result-object v0

    invoke-virtual {v0}, Lﹶﾞ/ˉʿ;->ʻˆ()V

    goto/16 :goto_10

    :cond_10
    move-object/from16 v54, v6

    invoke-virtual {v5, v13}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    :cond_11
    :goto_7
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v15, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v10, "[A-Z]{3}"

    invoke-virtual {v0, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_14

    invoke-virtual {v11, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ˊᵔ()Lﹶﾞ/ˉʿ;

    move-result-object v0

    invoke-virtual {v0, v12, v10}, Lﹶﾞ/ˉʿ;->ᐧˏ(Ljava/lang/String;Ljava/lang/String;)Lﹶﾞ/יי;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, v0, Lﹶﾞ/יי;->ˑﹳ:Ljava/lang/Object;

    instance-of v11, v0, Ljava/lang/Long;

    if-nez v11, :cond_13

    :cond_12
    move-object/from16 v27, v10

    goto :goto_9

    :cond_13
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-wide/from16 v25, v24

    new-instance v24, Lﹶﾞ/יי;

    iget-object v0, v3, Lﹶﾞ/ˏי;->ʽʽ:Ljava/lang/String;

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎˊ()Lᵎᴵ/ﹳٴ;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    add-long v5, v25, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    move-object/from16 v26, v0

    move-object/from16 v27, v10

    move-object/from16 v25, v12

    invoke-direct/range {v24 .. v30}, Lﹶﾞ/יי;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    move-object/from16 v12, v25

    move-object/from16 v25, v12

    :goto_8
    move-object/from16 v0, v24

    goto :goto_b

    :goto_9
    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ˊᵔ()Lﹶﾞ/ˉʿ;

    move-result-object v10

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᴵʼ()Lﹶﾞ/ᵎﹶ;

    move-result-object v0

    sget-object v11, Lﹶﾞ/ᴵᵔ;->ﹳـ:Lﹶﾞ/ˈٴ;

    invoke-virtual {v0, v12, v11}, Lﹶﾞ/ᵎﹶ;->ˎʾ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v12}, Lٴﾞ/ʻٴ;->ʽ(Ljava/lang/String;)V

    invoke-virtual {v10}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    invoke-virtual {v10}, Lﹶﾞ/ˎᵎ;->ﹶˎ()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v10}, Lﹶﾞ/ˉʿ;->יⁱ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    const-string v15, "delete from user_attributes where app_id=? and name in (select name from user_attributes where app_id=? and name like \'!_ltv!_%\' escape \'!\'order by set_timestamp desc limit ?,10);"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v12, v12, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v15, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_a

    :catch_0
    move-exception v0

    :try_start_5
    iget-object v10, v10, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v10, Lﹶﾞ/ᵎʻ;

    invoke-virtual {v10}, Lﹶﾞ/ᵎʻ;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v10

    invoke-virtual {v10}, Lﹶﾞ/ﹳـ;->ʼᵢ()Lﹶﾞ/ʼˈ;

    move-result-object v10

    const-string v11, "Error pruning currencies. appId"

    invoke-static {v12}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v15

    invoke-virtual {v10, v15, v0, v11}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_a
    new-instance v24, Lﹶﾞ/יי;

    iget-object v0, v3, Lﹶﾞ/ˏי;->ʽʽ:Ljava/lang/String;

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎˊ()Lᵎᴵ/ﹳٴ;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    move-object/from16 v26, v0

    move-object/from16 v25, v12

    invoke-direct/range {v24 .. v30}, Lﹶﾞ/יי;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_8

    :goto_b
    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ˊᵔ()Lﹶﾞ/ˉʿ;

    move-result-object v5

    invoke-virtual {v5, v0}, Lﹶﾞ/ˉʿ;->ʾˏ(Lﹶﾞ/יי;)Z

    move-result v5

    if-nez v5, :cond_d

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v5

    invoke-virtual {v5}, Lﹶﾞ/ﹳـ;->ʼᵢ()Lﹶﾞ/ʼˈ;

    move-result-object v5

    const-string v6, "Too many unique user properties are set. Ignoring user property. appId"

    invoke-static/range {v25 .. v25}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v10

    invoke-virtual/range {v48 .. v48}, Lﹶﾞ/ᵎʻ;->ˆʾ()Lﹶﾞ/ˑٴ;

    move-result-object v11

    iget-object v12, v0, Lﹶﾞ/יי;->ʽ:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lﹶﾞ/ˑٴ;->ʽ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v0, v0, Lﹶﾞ/יי;->ˑﹳ:Ljava/lang/Object;

    invoke-virtual {v5, v6, v10, v11, v0}, Lﹶﾞ/ʼˈ;->ˈ(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹳﹳ()Lﹶﾞ/ᵢﹳ;

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v26, 0x9

    const/16 v27, 0x0

    move-object/from16 v24, v31

    invoke-static/range {v24 .. v29}, Lﹶﾞ/ᵢﹳ;->ٴʿ(Lﹶﾞ/יˑ;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v5, v24

    goto :goto_c

    :cond_14
    move-object/from16 v25, v12

    goto/16 :goto_4

    :goto_c
    invoke-static {v9}, Lﹶﾞ/ᵢﹳ;->יי(Ljava/lang/String;)Z

    move-result v31

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹳﹳ()Lﹶﾞ/ᵢﹳ;

    if-nez v4, :cond_16

    const-wide/16 v14, 0x0

    :cond_15
    const-wide/16 v55, 0x0

    goto :goto_e

    :cond_16
    iget-object v0, v4, Lﹶﾞ/יـ;->ʾˋ:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v14, 0x0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Lﹶﾞ/יـ;->ﹳٴ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    instance-of v12, v6, [Landroid/os/Parcelable;

    if-eqz v12, :cond_17

    check-cast v6, [Landroid/os/Parcelable;

    array-length v6, v6

    const-wide/16 v55, 0x0

    int-to-long v10, v6

    add-long/2addr v14, v10

    goto :goto_d

    :cond_17
    const-wide/16 v55, 0x0

    goto :goto_d

    :goto_e
    const-wide/16 v10, 0x1

    add-long v28, v14, v10

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ˊᵔ()Lﹶﾞ/ˉʿ;

    move-result-object v24

    move-object/from16 v27, v25

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ⁱˊ()J

    move-result-wide v25

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v30, 0x1

    const/16 v32, 0x0

    const/16 v34, 0x0

    invoke-virtual/range {v24 .. v36}, Lﹶﾞ/ˉʿ;->ˋ(JLjava/lang/String;JZZZZZZZ)Lﹶﾞ/ˆʾ;

    move-result-object v0

    move-object/from16 v25, v27

    move/from16 v6, v31

    iget-wide v14, v0, Lﹶﾞ/ˆʾ;->ⁱˊ:J

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᴵʼ()Lﹶﾞ/ᵎﹶ;

    sget-object v12, Lﹶﾞ/ᴵᵔ;->ﾞʻ:Lﹶﾞ/ˈٴ;

    move-wide/from16 v57, v10

    const/4 v10, 0x0

    invoke-virtual {v12, v10}, Lﹶﾞ/ˈٴ;->ﹳٴ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-long v10, v10

    sub-long/2addr v14, v10

    cmp-long v10, v14, v55

    const-wide/16 v11, 0x3e8

    if-lez v10, :cond_19

    rem-long/2addr v14, v11

    cmp-long v2, v14, v57

    if-nez v2, :cond_18

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v2

    invoke-virtual {v2}, Lﹶﾞ/ﹳـ;->ʼᵢ()Lﹶﾞ/ʼˈ;

    move-result-object v2

    const-string v3, "Data loss. Too many events logged. appId, count"

    invoke-static/range {v25 .. v25}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v4

    iget-wide v5, v0, Lﹶﾞ/ˆʾ;->ⁱˊ:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v4, v0, v3}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_18
    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ˊᵔ()Lﹶﾞ/ˉʿ;

    move-result-object v0

    invoke-virtual {v0}, Lﹶﾞ/ˉʿ;->ʻˆ()V

    goto/16 :goto_10

    :cond_19
    if-eqz v6, :cond_1b

    iget-wide v14, v0, Lﹶﾞ/ˆʾ;->ﹳٴ:J

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᴵʼ()Lﹶﾞ/ᵎﹶ;

    sget-object v10, Lﹶﾞ/ᴵᵔ;->ᵔʾ:Lﹶﾞ/ˈٴ;

    move-wide/from16 v26, v11

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lﹶﾞ/ˈٴ;->ﹳٴ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-long v10, v10

    sub-long/2addr v14, v10

    cmp-long v10, v14, v55

    if-lez v10, :cond_1b

    rem-long v14, v14, v26

    cmp-long v2, v14, v57

    if-nez v2, :cond_1a

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v2

    invoke-virtual {v2}, Lﹶﾞ/ﹳـ;->ʼᵢ()Lﹶﾞ/ʼˈ;

    move-result-object v2

    const-string v4, "Data loss. Too many public events logged. appId, count"

    invoke-static/range {v25 .. v25}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v6

    iget-wide v7, v0, Lﹶﾞ/ˆʾ;->ﹳٴ:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v6, v0, v4}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1a
    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹳﹳ()Lﹶﾞ/ᵢﹳ;

    const-string v27, "_ev"

    iget-object v0, v3, Lﹶﾞ/ˏי;->ʾˋ:Ljava/lang/String;

    const/16 v29, 0x0

    const/16 v26, 0x10

    move-object/from16 v28, v0

    move-object/from16 v24, v5

    invoke-static/range {v24 .. v29}, Lﹶﾞ/ᵢﹳ;->ٴʿ(Lﹶﾞ/יˑ;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ˊᵔ()Lﹶﾞ/ˉʿ;

    move-result-object v0

    invoke-virtual {v0}, Lﹶﾞ/ˉʿ;->ʻˆ()V

    goto/16 :goto_10

    :cond_1b
    move-object/from16 v12, v25

    if-eqz v33, :cond_1d

    iget-wide v14, v0, Lﹶﾞ/ˆʾ;->ˈ:J

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᴵʼ()Lﹶﾞ/ᵎﹶ;

    move-result-object v11

    sget-object v10, Lﹶﾞ/ᴵᵔ;->ˉʿ:Lﹶﾞ/ˈٴ;

    invoke-virtual {v11, v12, v10}, Lﹶﾞ/ᵎﹶ;->ˎʾ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)I

    move-result v10

    const v11, 0xf4240

    invoke-static {v11, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    const/4 v11, 0x0

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    int-to-long v10, v10

    sub-long/2addr v14, v10

    cmp-long v10, v14, v55

    if-lez v10, :cond_1d

    cmp-long v2, v14, v57

    if-nez v2, :cond_1c

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v2

    invoke-virtual {v2}, Lﹶﾞ/ﹳـ;->ʼᵢ()Lﹶﾞ/ʼˈ;

    move-result-object v2

    const-string v3, "Too many error events logged. appId, count"

    invoke-static {v12}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v4

    iget-wide v5, v0, Lﹶﾞ/ˆʾ;->ˈ:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v4, v0, v3}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1c
    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ˊᵔ()Lﹶﾞ/ˉʿ;

    move-result-object v0

    invoke-virtual {v0}, Lﹶﾞ/ˉʿ;->ʻˆ()V

    goto/16 :goto_10

    :cond_1d
    invoke-virtual {v4}, Lﹶﾞ/יـ;->ˑﹳ()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹳﹳ()Lﹶﾞ/ᵢﹳ;

    move-result-object v0

    const-string v10, "_o"

    iget-object v11, v3, Lﹶﾞ/ˏי;->ʽʽ:Ljava/lang/String;

    invoke-virtual {v0, v4, v10, v11}, Lﹶﾞ/ᵢﹳ;->ᵔⁱ(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹳﹳ()Lﹶﾞ/ᵢﹳ;

    move-result-object v0

    iget-object v10, v2, Lﹶﾞ/ʻᐧ;->ᐧﾞ:Ljava/lang/String;

    invoke-virtual {v0, v12, v10}, Lﹶﾞ/ᵢﹳ;->ˆﹳ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v10, "_r"

    if-eqz v0, :cond_1e

    :try_start_6
    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹳﹳ()Lﹶﾞ/ᵢﹳ;

    move-result-object v0

    const-string v14, "_dbg"

    invoke-static/range {v57 .. v58}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v0, v4, v14, v15}, Lﹶﾞ/ᵢﹳ;->ᵔⁱ(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹳﹳ()Lﹶﾞ/ᵢﹳ;

    move-result-object v0

    invoke-virtual {v0, v4, v10, v15}, Lﹶﾞ/ᵢﹳ;->ᵔⁱ(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1e
    const-string v0, "_s"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ˊᵔ()Lﹶﾞ/ˉʿ;

    move-result-object v0

    invoke-virtual {v0, v12, v8}, Lﹶﾞ/ˉʿ;->ᐧˏ(Ljava/lang/String;Ljava/lang/String;)Lﹶﾞ/יי;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, v0, Lﹶﾞ/יי;->ˑﹳ:Ljava/lang/Object;

    instance-of v14, v0, Ljava/lang/Long;

    if-eqz v14, :cond_1f

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹳﹳ()Lﹶﾞ/ᵢﹳ;

    move-result-object v14

    invoke-virtual {v14, v4, v8, v0}, Lﹶﾞ/ᵢﹳ;->ᵔⁱ(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1f
    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᴵʼ()Lﹶﾞ/ᵎﹶ;

    move-result-object v0

    sget-object v8, Lﹶﾞ/ᴵᵔ;->ᵢˋ:Lﹶﾞ/ˈٴ;

    const/4 v14, 0x0

    invoke-virtual {v0, v14, v8}, Lﹶﾞ/ᵎﹶ;->ˎˉ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "am"

    invoke-static {v11, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "_ai"

    invoke-virtual {v9, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {v4, v13}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v8, v0, Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v8, :cond_20

    :try_start_7
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-virtual {v4, v13}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {v4, v13, v8, v9}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catch_1
    :cond_20
    :try_start_8
    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ˊᵔ()Lﹶﾞ/ˉʿ;

    move-result-object v8

    invoke-static {v12}, Lٴﾞ/ʻٴ;->ʽ(Ljava/lang/String;)V

    invoke-virtual {v8}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    invoke-virtual {v8}, Lﹶﾞ/ˎᵎ;->ﹶˎ()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    invoke-virtual {v8}, Lﹶﾞ/ˉʿ;->יⁱ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v9, v8, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v9, Lﹶﾞ/ᵎʻ;

    iget-object v9, v9, Lﹶﾞ/ᵎʻ;->ˈٴ:Lﹶﾞ/ᵎﹶ;

    sget-object v11, Lﹶﾞ/ᴵᵔ;->ᵔﹳ:Lﹶﾞ/ˈٴ;

    invoke-virtual {v9, v12, v11}, Lﹶﾞ/ᵎﹶ;->ˎʾ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)I

    move-result v9

    const v11, 0xf4240

    invoke-static {v11, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/4 v11, 0x0

    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const-string v11, "rowid in (select rowid from raw_events where app_id=? order by rowid desc limit -1 offset ?)"

    filled-new-array {v12, v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v7, v11, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    int-to-long v8, v0

    goto :goto_f

    :catch_2
    move-exception v0

    :try_start_a
    iget-object v8, v8, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v8, Lﹶﾞ/ᵎʻ;

    invoke-virtual {v8}, Lﹶﾞ/ᵎʻ;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v8

    invoke-virtual {v8}, Lﹶﾞ/ﹳـ;->ʼᵢ()Lﹶﾞ/ʼˈ;

    move-result-object v8

    const-string v9, "Error deleting over the limit events. appId"

    invoke-static {v12}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v11

    invoke-virtual {v8, v11, v0, v9}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    move-wide/from16 v8, v55

    :goto_f
    cmp-long v0, v8, v55

    if-lez v0, :cond_21

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v0

    invoke-virtual {v0}, Lﹶﾞ/ﹳـ;->יˉ()Lﹶﾞ/ʼˈ;

    move-result-object v0

    const-string v11, "Data lost. Too many events stored on disk, deleted. appId"

    invoke-static {v12}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v13

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v13, v8, v11}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_21
    new-instance v24, Lـᵢ/ˆʾ;

    iget-object v0, v1, Lﹶﾞ/ᵢי;->ᵔי:Lﹶﾞ/ᵎʻ;

    iget-object v8, v3, Lﹶﾞ/ˏי;->ʽʽ:Ljava/lang/String;

    iget-object v9, v3, Lﹶﾞ/ˏי;->ʾˋ:Ljava/lang/String;

    iget-wide v13, v3, Lﹶﾞ/ˏי;->ˈٴ:J

    const-wide/16 v31, 0x0

    move-object/from16 v25, v0

    move-object/from16 v33, v4

    move-object/from16 v26, v8

    move-object/from16 v28, v9

    move-object/from16 v27, v12

    move-wide/from16 v29, v13

    invoke-direct/range {v24 .. v33}, Lـᵢ/ˆʾ;-><init>(Lﹶﾞ/ᵎʻ;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    move-object/from16 v0, v24

    move-object/from16 v3, v25

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ˊᵔ()Lﹶﾞ/ˉʿ;

    move-result-object v4

    iget-object v8, v0, Lـᵢ/ˆʾ;->ˑﹳ:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    move-object/from16 v9, v54

    invoke-virtual {v4, v9, v12, v8}, Lﹶﾞ/ˉʿ;->ˆˑ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lﹶﾞ/ᵔﹳ;

    move-result-object v4

    if-nez v4, :cond_23

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ˊᵔ()Lﹶﾞ/ˉʿ;

    move-result-object v4

    invoke-virtual {v4, v12}, Lﹶﾞ/ˉʿ;->ٴʿ(Ljava/lang/String;)J

    move-result-wide v13

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᴵʼ()Lﹶﾞ/ᵎﹶ;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Lﹶﾞ/ᴵᵔ;->ˉـ:Lﹶﾞ/ˈٴ;

    invoke-virtual {v4, v12, v11}, Lﹶﾞ/ᵎﹶ;->ˎʾ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)I

    move-result v4

    const/16 v15, 0x7d0

    invoke-static {v4, v15}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/16 v15, 0x1f4

    invoke-static {v4, v15}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v31, v5

    int-to-long v4, v4

    cmp-long v4, v13, v4

    if-ltz v4, :cond_22

    if-eqz v6, :cond_22

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v0

    invoke-virtual {v0}, Lﹶﾞ/ﹳـ;->ʼᵢ()Lﹶﾞ/ʼˈ;

    move-result-object v0

    const-string v2, "Too many event names used, ignoring event. appId, name, supported count"

    invoke-static {v12}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v4

    invoke-virtual {v3}, Lﹶﾞ/ᵎʻ;->ˆʾ()Lﹶﾞ/ˑٴ;

    move-result-object v3

    invoke-virtual {v3, v8}, Lﹶﾞ/ˑٴ;->ﹳٴ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᴵʼ()Lﹶﾞ/ᵎﹶ;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5, v12, v11}, Lﹶﾞ/ᵎﹶ;->ˎʾ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)I

    move-result v5

    const/16 v6, 0x7d0

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v5, v15}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v2, v4, v3, v5}, Lﹶﾞ/ʼˈ;->ˈ(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹳﹳ()Lﹶﾞ/ᵢﹳ;

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v26, 0x8

    const/16 v27, 0x0

    move-object/from16 v25, v12

    move-object/from16 v24, v31

    invoke-static/range {v24 .. v29}, Lﹶﾞ/ᵢﹳ;->ٴʿ(Lﹶﾞ/יˑ;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_10
    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ˊᵔ()Lﹶﾞ/ˉʿ;

    move-result-object v0

    invoke-virtual {v0}, Lﹶﾞ/ˉʿ;->ˏʻ()V

    return-void

    :cond_22
    move-object/from16 v25, v12

    move-object/from16 v5, v31

    :try_start_b
    new-instance v24, Lﹶﾞ/ᵔﹳ;

    iget-wide v3, v0, Lـᵢ/ˆʾ;->ⁱˊ:J

    const/16 v39, 0x0

    const/16 v40, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    const-wide/16 v35, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-wide/from16 v33, v3

    move-object/from16 v26, v8

    invoke-direct/range {v24 .. v40}, Lﹶﾞ/ᵔﹳ;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    move-object/from16 v12, v25

    :goto_11
    move-object v3, v0

    move-object/from16 v0, v24

    goto :goto_12

    :cond_23
    iget-wide v13, v4, Lﹶﾞ/ᵔﹳ;->ﾞᴵ:J

    invoke-virtual {v0, v3, v13, v14}, Lـᵢ/ˆʾ;->ﾞʻ(Lﹶﾞ/ᵎʻ;J)Lـᵢ/ˆʾ;

    move-result-object v0

    iget-wide v13, v0, Lـᵢ/ˆʾ;->ⁱˊ:J

    invoke-virtual {v4, v13, v14}, Lﹶﾞ/ᵔﹳ;->ﹳٴ(J)Lﹶﾞ/ᵔﹳ;

    move-result-object v24

    goto :goto_11

    :goto_12
    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ˊᵔ()Lﹶﾞ/ˉʿ;

    move-result-object v4

    invoke-virtual {v4, v9, v0}, Lﹶﾞ/ˉʿ;->ˎـ(Ljava/lang/String;Lﹶﾞ/ᵔﹳ;)V

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v0

    invoke-virtual {v0}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ʻˋ()V

    iget-object v0, v3, Lـᵢ/ˆʾ;->ˈ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ʽ(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ﹳٴ(Z)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ﹳـ()Lcom/google/android/gms/internal/measurement/ʽʾ;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ʽʾ;->ʽʽ()V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ʽʾ;->ﾞʻ()V

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {v4, v12}, Lcom/google/android/gms/internal/measurement/ʽʾ;->ˏי(Ljava/lang/String;)V

    :cond_24
    invoke-static/range {v53 .. v53}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    move-object/from16 v6, v53

    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/measurement/ʽʾ;->ᵔﹳ(Ljava/lang/String;)V

    goto :goto_13

    :cond_25
    move-object/from16 v6, v53

    :goto_13
    invoke-static/range {v52 .. v52}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    move-object/from16 v8, v52

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/ʽʾ;->ʽﹳ(Ljava/lang/String;)V

    goto :goto_14

    :cond_26
    move-object/from16 v8, v52

    :goto_14
    invoke-static/range {v51 .. v51}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    move-object/from16 v9, v51

    invoke-virtual {v4, v9}, Lcom/google/android/gms/internal/measurement/ʽʾ;->ˈⁱ(Ljava/lang/String;)V

    goto :goto_15

    :cond_27
    move-object/from16 v9, v51

    :goto_15
    const-wide/32 v13, -0x80000000

    cmp-long v0, v49, v13

    if-eqz v0, :cond_28

    move-wide/from16 v13, v49

    long-to-int v0, v13

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/measurement/ʽʾ;->ˑٴ(I)V

    :goto_16
    move-object/from16 v53, v6

    move-object v11, v7

    move-wide/from16 v6, v46

    goto :goto_17

    :cond_28
    move-wide/from16 v13, v49

    goto :goto_16

    :goto_17
    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/internal/measurement/ʽʾ;->ʻٴ(J)V

    invoke-static/range {v45 .. v45}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    move-object/from16 v15, v45

    invoke-virtual {v4, v15}, Lcom/google/android/gms/internal/measurement/ʽʾ;->ᵔי(Ljava/lang/String;)V

    goto :goto_18

    :cond_29
    move-object/from16 v15, v45

    :goto_18
    invoke-static {v12}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    invoke-virtual {v1, v12}, Lﹶﾞ/ᵢי;->ﹳٴ(Ljava/lang/String;)Lﹶﾞ/ᐧˎ;

    move-result-object v0

    move-wide/from16 v46, v6

    move-object/from16 v51, v9

    move-object/from16 v24, v11

    move-object/from16 v11, v44

    const/16 v9, 0x64

    invoke-static {v9, v11}, Lﹶﾞ/ᐧˎ;->ʽ(ILjava/lang/String;)Lﹶﾞ/ᐧˎ;

    move-result-object v6

    invoke-virtual {v0, v6}, Lﹶﾞ/ᐧˎ;->ˆʾ(Lﹶﾞ/ᐧˎ;)Lﹶﾞ/ᐧˎ;

    move-result-object v0

    invoke-virtual {v0}, Lﹶﾞ/ᐧˎ;->ﾞᴵ()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/measurement/ʽʾ;->ﹳـ(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/ˉˏ;->ﹳٴ()V

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᴵʼ()Lﹶﾞ/ᵎﹶ;

    move-result-object v6

    sget-object v7, Lﹶﾞ/ᴵᵔ;->ʼᵢ:Lﹶﾞ/ˈٴ;

    invoke-virtual {v6, v12, v7}, Lﹶﾞ/ᵎﹶ;->ˎˉ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)Z

    move-result v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    sget-object v7, Lﹶﾞ/ⁱˉ;->ᴵˊ:Lﹶﾞ/ⁱˉ;

    if-eqz v6, :cond_34

    :try_start_c
    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹳﹳ()Lﹶﾞ/ᵢﹳ;

    invoke-static {v12}, Lﹶﾞ/ᵢﹳ;->ˆˑ(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_34

    iget v6, v2, Lﹶﾞ/ʻᐧ;->ʿᵢ:I

    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/measurement/ʽʾ;->ˈٴ(I)V

    move-wide/from16 v49, v13

    iget-wide v13, v2, Lﹶﾞ/ʻᐧ;->ᵎᵔ:J

    invoke-virtual {v0, v7}, Lﹶﾞ/ᐧˎ;->ʼˎ(Lﹶﾞ/ⁱˉ;)Z

    move-result v0

    const-wide/16 v25, 0x20

    if-nez v0, :cond_2a

    cmp-long v0, v13, v55

    if-eqz v0, :cond_2a

    const-wide/16 v27, -0x2

    and-long v13, v13, v27

    or-long v13, v13, v25

    :cond_2a
    cmp-long v0, v13, v57

    if-nez v0, :cond_2b

    const/4 v0, 0x1

    goto :goto_19

    :cond_2b
    const/4 v0, 0x0

    :goto_19
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/measurement/ʽʾ;->ˉـ(Z)V

    cmp-long v0, v13, v55

    if-nez v0, :cond_2c

    goto/16 :goto_21

    :cond_2c
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ﾞˋ;->ـˆ()Lcom/google/android/gms/internal/measurement/יˉ;

    move-result-object v0

    and-long v27, v13, v57

    cmp-long v6, v27, v55

    if-eqz v6, :cond_2d

    const/4 v6, 0x1

    goto :goto_1a

    :cond_2d
    const/4 v6, 0x0

    :goto_1a
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/measurement/יˉ;->ˆʾ(Z)V

    const-wide/16 v27, 0x2

    and-long v27, v13, v27

    cmp-long v6, v27, v55

    if-eqz v6, :cond_2e

    const/4 v6, 0x1

    goto :goto_1b

    :cond_2e
    const/4 v6, 0x0

    :goto_1b
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/measurement/יˉ;->ٴﹶ(Z)V

    const-wide/16 v27, 0x4

    and-long v27, v13, v27

    cmp-long v6, v27, v55

    if-eqz v6, :cond_2f

    const/4 v6, 0x1

    goto :goto_1c

    :cond_2f
    const/4 v6, 0x0

    :goto_1c
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/measurement/יˉ;->ﾞʻ(Z)V

    const-wide/16 v27, 0x8

    and-long v27, v13, v27

    cmp-long v6, v27, v55

    if-eqz v6, :cond_30

    const/4 v6, 0x1

    goto :goto_1d

    :cond_30
    const/4 v6, 0x0

    :goto_1d
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/measurement/יˉ;->ˉʿ(Z)V

    const-wide/16 v27, 0x10

    and-long v27, v13, v27

    cmp-long v6, v27, v55

    if-eqz v6, :cond_31

    const/4 v6, 0x1

    goto :goto_1e

    :cond_31
    const/4 v6, 0x0

    :goto_1e
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/measurement/יˉ;->ᵔʾ(Z)V

    and-long v25, v13, v25

    cmp-long v6, v25, v55

    if-eqz v6, :cond_32

    const/4 v6, 0x1

    goto :goto_1f

    :cond_32
    const/4 v6, 0x0

    :goto_1f
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/measurement/יˉ;->ʼᐧ(Z)V

    const-wide/16 v25, 0x40

    and-long v13, v13, v25

    cmp-long v6, v13, v55

    if-eqz v6, :cond_33

    const/4 v6, 0x1

    goto :goto_20

    :cond_33
    const/4 v6, 0x0

    :goto_20
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/measurement/יˉ;->ᵔﹳ(Z)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ﾞˋ;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/measurement/ʽʾ;->ᴵᵔ(Lcom/google/android/gms/internal/measurement/ﾞˋ;)V

    goto :goto_21

    :cond_34
    move-wide/from16 v49, v13

    :goto_21
    cmp-long v0, v22, v55

    if-eqz v0, :cond_35

    move-wide/from16 v13, v22

    invoke-virtual {v4, v13, v14}, Lcom/google/android/gms/internal/measurement/ʽʾ;->ʾˋ(J)V

    move-wide/from16 v22, v13

    :cond_35
    move-wide/from16 v13, v18

    invoke-virtual {v4, v13, v14}, Lcom/google/android/gms/internal/measurement/ʽʾ;->ʼˈ(J)V

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹶᐧ()Lﹶﾞ/ʿ;

    move-result-object v6

    iget-object v0, v6, Lﹶﾞ/ˏʻ;->ᴵˊ:Lﹶﾞ/ᵢי;

    iget-object v0, v0, Lﹶﾞ/ᵢי;->ᵔי:Lﹶﾞ/ᵎʻ;

    invoke-virtual {v0}, Lﹶﾞ/ᵎʻ;->ـˆ()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/יי;->ﹳٴ()Landroid/net/Uri;

    move-result-object v9

    move-wide/from16 v18, v13

    sget-object v13, Lـﹶ/ˉʿ;->ᴵˊ:Lـﹶ/ˉʿ;

    invoke-static {v0, v9, v13}, Lcom/google/android/gms/internal/measurement/ʾˏ;->ﹳٴ(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Runnable;)Lcom/google/android/gms/internal/measurement/ʾˏ;

    move-result-object v0

    if-nez v0, :cond_36

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    goto :goto_22

    :cond_36
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ʾˏ;->ⁱˊ()Ljava/util/Map;

    move-result-object v0

    :goto_22
    if-eqz v0, :cond_37

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_38

    :cond_37
    move-object/from16 v52, v8

    :goto_23
    const/4 v9, 0x0

    goto/16 :goto_28

    :cond_38
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    sget-object v13, Lﹶﾞ/ᴵᵔ;->ˊᵔ:Lﹶﾞ/ˈٴ;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lﹶﾞ/ˈٴ;->ﹳٴ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_24
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v26, v14

    move-object/from16 v14, v25

    check-cast v14, Ljava/lang/String;

    move-object/from16 v52, v8

    const-string v8, "measurement.id."

    invoke-virtual {v14, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v8, :cond_39

    :try_start_d
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_39

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v13, :cond_39

    iget-object v0, v6, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    invoke-virtual {v0}, Lﹶﾞ/ᵎʻ;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v0

    invoke-virtual {v0}, Lﹶﾞ/ﹳـ;->יˉ()Lﹶﾞ/ʼˈ;

    move-result-object v0

    const-string v8, "Too many experiment IDs. Number of IDs"

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v0, v14, v8}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_27

    :catch_3
    move-exception v0

    goto :goto_26

    :cond_39
    :goto_25
    move-object/from16 v14, v26

    move-object/from16 v8, v52

    goto :goto_24

    :goto_26
    :try_start_e
    iget-object v8, v6, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v8, Lﹶﾞ/ᵎʻ;

    invoke-virtual {v8}, Lﹶﾞ/ᵎʻ;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v8

    invoke-virtual {v8}, Lﹶﾞ/ﹳـ;->יˉ()Lﹶﾞ/ʼˈ;

    move-result-object v8

    const-string v14, "Experiment ID NumberFormatException"

    invoke-virtual {v8, v0, v14}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_25

    :cond_3a
    move-object/from16 v52, v8

    :goto_27
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3b

    goto/16 :goto_23

    :cond_3b
    :goto_28
    if-eqz v9, :cond_3c

    invoke-virtual {v4, v9}, Lcom/google/android/gms/internal/measurement/ʽʾ;->ˊˋ(Ljava/util/ArrayList;)V

    :cond_3c
    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᴵʼ()Lﹶﾞ/ᵎﹶ;

    move-result-object v0

    sget-object v6, Lﹶﾞ/ᴵᵔ;->ᵔⁱ:Lﹶﾞ/ˈٴ;

    const/4 v14, 0x0

    invoke-virtual {v0, v14, v6}, Lﹶﾞ/ᵎﹶ;->ˎˉ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ʽʾ;->ˉٴ()V

    :cond_3d
    invoke-virtual {v1, v12}, Lﹶﾞ/ᵢי;->ﹳٴ(Ljava/lang/String;)Lﹶﾞ/ᐧˎ;

    move-result-object v0

    const/16 v9, 0x64

    invoke-static {v9, v11}, Lﹶﾞ/ᐧˎ;->ʽ(ILjava/lang/String;)Lﹶﾞ/ᐧˎ;

    move-result-object v6

    invoke-virtual {v0, v6}, Lﹶﾞ/ᐧˎ;->ˆʾ(Lﹶﾞ/ᐧˎ;)Lﹶﾞ/ᐧˎ;

    move-result-object v0

    invoke-virtual {v0, v7}, Lﹶﾞ/ᐧˎ;->ʼˎ(Lﹶﾞ/ⁱˉ;)Z

    move-result v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-eqz v6, :cond_42

    if-eqz v17, :cond_42

    :try_start_f
    iget-object v6, v1, Lﹶﾞ/ᵢי;->ᵎⁱ:Lﹶﾞ/ˆˎ;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v7}, Lﹶﾞ/ᐧˎ;->ʼˎ(Lﹶﾞ/ⁱˉ;)Z

    move-result v8

    if-eqz v8, :cond_3e

    invoke-virtual {v6, v12}, Lﹶﾞ/ˆˎ;->ʼᵢ(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v6

    goto :goto_29

    :cond_3e
    new-instance v6, Landroid/util/Pair;

    const-string v8, ""

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v6, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_29
    iget-object v8, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_42

    iget-object v8, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/ʽʾ;->ʾᵎ(Ljava/lang/String;)V

    iget-object v8, v6, Landroid/util/Pair;->second:Ljava/lang/Object;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    if-eqz v8, :cond_3f

    :try_start_10
    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/ʽʾ;->ʼʼ(Z)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :cond_3f
    :try_start_11
    iget-object v8, v3, Lـᵢ/ˆʾ;->ˑﹳ:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    move-object/from16 v9, v21

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_42

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    const-string v8, "00000000-0000-0000-0000-000000000000"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_42

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ˊᵔ()Lﹶﾞ/ˉʿ;

    move-result-object v6

    invoke-virtual {v6, v12}, Lﹶﾞ/ˉʿ;->ᵢﹳ(Ljava/lang/String;)Lﹶﾞ/ʿᵢ;

    move-result-object v6

    if-eqz v6, :cond_42

    iget-object v8, v6, Lﹶﾞ/ʿᵢ;->ﹳٴ:Lﹶﾞ/ᵎʻ;

    iget-object v8, v8, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v8}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    invoke-virtual {v8}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    iget-boolean v8, v6, Lﹶﾞ/ʿᵢ;->ʼʼ:Z

    if-eqz v8, :cond_42

    const/4 v11, 0x0

    const/4 v14, 0x0

    invoke-virtual {v1, v12, v11, v14, v14}, Lﹶﾞ/ᵢי;->ᵔﹳ(Ljava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    iget-object v11, v6, Lﹶﾞ/ʿᵢ;->ﹳٴ:Lﹶﾞ/ᵎʻ;

    iget-object v11, v11, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v11}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    invoke-virtual {v11}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    iget-object v11, v6, Lﹶﾞ/ʿᵢ;->ᵢˏ:Ljava/lang/Long;

    if-eqz v11, :cond_40

    const-string v13, "_pfo"

    move-object/from16 v45, v15

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    move-wide/from16 v1, v55

    invoke-static {v1, v2, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    invoke-virtual {v8, v13, v14, v15}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_2a

    :catchall_1
    move-exception v0

    move-object/from16 v5, p0

    goto/16 :goto_37

    :cond_40
    move-object/from16 v45, v15

    :goto_2a
    iget-object v1, v6, Lﹶﾞ/ʿᵢ;->ﹳٴ:Lﹶﾞ/ᵎʻ;

    iget-object v1, v1, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v1}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    invoke-virtual {v1}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    iget-object v1, v6, Lﹶﾞ/ʿᵢ;->ʾˋ:Ljava/lang/Long;

    if-eqz v1, :cond_41

    const-string v2, "_uwa"

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v8, v2, v13, v14}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_41
    move-wide/from16 v1, v57

    invoke-virtual {v8, v10, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v5, v12, v9, v8}, Lᐧﹳ/ʽ;->ʽ(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2b

    :cond_42
    move-object/from16 v45, v15

    :goto_2b
    invoke-virtual/range {v48 .. v48}, Lﹶﾞ/ᵎʻ;->ˉʿ()Lﹶﾞ/ʼᐧ;

    move-result-object v1

    invoke-virtual {v1}, Lﹶﾞ/ˎᐧ;->ʽˑ()V

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ʽʾ;->ˉʿ()V

    invoke-virtual/range {v48 .. v48}, Lﹶﾞ/ᵎʻ;->ˉʿ()Lﹶﾞ/ʼᐧ;

    move-result-object v1

    invoke-virtual {v1}, Lﹶﾞ/ˎᐧ;->ʽˑ()V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v2, v4, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v2, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ᵎʻ(Ljava/lang/String;)V

    invoke-virtual/range {v48 .. v48}, Lﹶﾞ/ᵎʻ;->ˉʿ()Lﹶﾞ/ʼᐧ;

    move-result-object v1

    invoke-virtual {v1}, Lﹶﾞ/ʼᐧ;->ʼᵢ()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/measurement/ʽʾ;->ʼᐧ(I)V

    invoke-virtual/range {v48 .. v48}, Lﹶﾞ/ᵎʻ;->ˉʿ()Lﹶﾞ/ʼᐧ;

    move-result-object v1

    invoke-virtual {v1}, Lﹶﾞ/ʼᐧ;->יˉ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/measurement/ʽʾ;->ᵔʾ(Ljava/lang/String;)V

    move-object/from16 v2, p2

    iget-wide v5, v2, Lﹶﾞ/ʻᐧ;->ᴵˑ:J

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/measurement/ʽʾ;->ᴵˑ(J)V

    invoke-virtual/range {v48 .. v48}, Lﹶﾞ/ᵎʻ;->ﹳٴ()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ʽʾ;->יـ()Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_43

    goto :goto_2c

    :cond_43
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v0, v4, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v0, v14}, Lcom/google/android/gms/internal/measurement/ˆˑ;->יˉ(Ljava/lang/String;)V

    throw v14

    :cond_44
    :goto_2c
    invoke-virtual/range {p0 .. p0}, Lﹶﾞ/ᵢי;->ˊᵔ()Lﹶﾞ/ˉʿ;

    move-result-object v1

    invoke-virtual {v1, v12}, Lﹶﾞ/ˉʿ;->ᵢﹳ(Ljava/lang/String;)Lﹶﾞ/ʿᵢ;

    move-result-object v1

    if-nez v1, :cond_46

    new-instance v1, Lﹶﾞ/ʿᵢ;

    move-object/from16 v5, v48

    invoke-direct {v1, v5, v12}, Lﹶﾞ/ʿᵢ;-><init>(Lﹶﾞ/ᵎʻ;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    move-object/from16 v5, p0

    :try_start_12
    invoke-virtual {v5, v0}, Lﹶﾞ/ᵢי;->ٴﹶ(Lﹶﾞ/ᐧˎ;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lﹶﾞ/ʿᵢ;->ˊʻ(Ljava/lang/String;)V

    iget-object v2, v2, Lﹶﾞ/ʻᐧ;->ᵎˊ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lﹶﾞ/ʿᵢ;->ᵎˊ(Ljava/lang/String;)V

    move-object/from16 v15, v45

    invoke-virtual {v1, v15}, Lﹶﾞ/ʿᵢ;->ˉٴ(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lﹶﾞ/ᐧˎ;->ʼˎ(Lﹶﾞ/ⁱˉ;)Z

    move-result v2

    if-eqz v2, :cond_45

    iget-object v2, v5, Lﹶﾞ/ᵢי;->ᵎⁱ:Lﹶﾞ/ˆˎ;

    move/from16 v6, v17

    invoke-virtual {v2, v12, v6}, Lﹶﾞ/ˆˎ;->יˉ(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lﹶﾞ/ʿᵢ;->ᵎⁱ(Ljava/lang/String;)V

    :cond_45
    const-wide/16 v6, 0x0

    goto :goto_2d

    :catchall_2
    move-exception v0

    goto/16 :goto_37

    :goto_2d
    invoke-virtual {v1, v6, v7}, Lﹶﾞ/ʿᵢ;->ˑﹳ(J)V

    invoke-virtual {v1, v6, v7}, Lﹶﾞ/ʿᵢ;->ᵔי(J)V

    invoke-virtual {v1, v6, v7}, Lﹶﾞ/ʿᵢ;->ˆﾞ(J)V

    move-object/from16 v8, v52

    invoke-virtual {v1, v8}, Lﹶﾞ/ʿᵢ;->ˈʿ(Ljava/lang/String;)V

    move-wide/from16 v13, v49

    invoke-virtual {v1, v13, v14}, Lﹶﾞ/ʿᵢ;->ˋᵔ(J)V

    move-object/from16 v6, v53

    invoke-virtual {v1, v6}, Lﹶﾞ/ʿᵢ;->ˊˋ(Ljava/lang/String;)V

    move-wide/from16 v6, v46

    invoke-virtual {v1, v6, v7}, Lﹶﾞ/ʿᵢ;->ʼˈ(J)V

    move-wide/from16 v13, v22

    invoke-virtual {v1, v13, v14}, Lﹶﾞ/ʿᵢ;->ﹳٴ(J)V

    move/from16 v2, v43

    invoke-virtual {v1, v2}, Lﹶﾞ/ʿᵢ;->ˈ(Z)V

    move-wide/from16 v13, v18

    invoke-virtual {v1, v13, v14}, Lﹶﾞ/ʿᵢ;->ʽ(J)V

    invoke-virtual {v5}, Lﹶﾞ/ᵢי;->ˊᵔ()Lﹶﾞ/ˉʿ;

    move-result-object v2

    const/4 v11, 0x0

    invoke-virtual {v2, v1, v11}, Lﹶﾞ/ˉʿ;->ᐧⁱ(Lﹶﾞ/ʿᵢ;Z)V

    goto :goto_2e

    :cond_46
    const/4 v11, 0x0

    move-object/from16 v5, p0

    :goto_2e
    sget-object v2, Lﹶﾞ/ⁱˉ;->ʽʽ:Lﹶﾞ/ⁱˉ;

    invoke-virtual {v0, v2}, Lﹶﾞ/ᐧˎ;->ʼˎ(Lﹶﾞ/ⁱˉ;)Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-virtual {v1}, Lﹶﾞ/ʿᵢ;->ᴵᵔ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_47

    invoke-virtual {v1}, Lﹶﾞ/ʿᵢ;->ᴵᵔ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/measurement/ʽʾ;->ᵢˏ(Ljava/lang/String;)V

    :cond_47
    invoke-virtual {v1}, Lﹶﾞ/ʿᵢ;->ٴʼ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_48

    invoke-virtual {v1}, Lﹶﾞ/ʿᵢ;->ٴʼ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/measurement/ʽʾ;->ˈʿ(Ljava/lang/String;)V

    :cond_48
    invoke-virtual {v5}, Lﹶﾞ/ᵢי;->ˊᵔ()Lﹶﾞ/ˉʿ;

    move-result-object v0

    invoke-virtual {v0, v12}, Lﹶﾞ/ˉʿ;->ـˑ(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    move v2, v11

    :goto_2f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_4c

    invoke-static {}, Lcom/google/android/gms/internal/measurement/ˆʻ;->ʾˋ()Lcom/google/android/gms/internal/measurement/ﾞˊ;

    move-result-object v6

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lﹶﾞ/יי;

    iget-object v7, v7, Lﹶﾞ/יי;->ʽ:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v8, v6, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v8, Lcom/google/android/gms/internal/measurement/ˆʻ;

    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/measurement/ˆʻ;->ʽʽ(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lﹶﾞ/יי;

    iget-wide v7, v7, Lﹶﾞ/יי;->ˈ:J

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v9, v6, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v9, Lcom/google/android/gms/internal/measurement/ˆʻ;

    invoke-virtual {v9, v7, v8}, Lcom/google/android/gms/internal/measurement/ˆʻ;->ᴵˊ(J)V

    invoke-virtual {v5}, Lﹶﾞ/ᵢי;->ﹶᐧ()Lﹶﾞ/ʿ;

    move-result-object v7

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lﹶﾞ/יי;

    iget-object v8, v8, Lﹶﾞ/יי;->ˑﹳ:Ljava/lang/Object;

    invoke-virtual {v7, v6, v8}, Lﹶﾞ/ʿ;->ˆˑ(Lcom/google/android/gms/internal/measurement/ﾞˊ;Ljava/lang/Object;)V

    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/measurement/ʽʾ;->ˏᵢ(Lcom/google/android/gms/internal/measurement/ﾞˊ;)V

    const-string v6, "_sid"

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lﹶﾞ/יי;

    iget-object v7, v7, Lﹶﾞ/יי;->ʽ:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4a

    iget-object v6, v1, Lﹶﾞ/ʿᵢ;->ﹳٴ:Lﹶﾞ/ᵎʻ;

    iget-object v6, v6, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v6}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    invoke-virtual {v6}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    iget-wide v6, v1, Lﹶﾞ/ʿᵢ;->ـˆ:J

    const-wide/16 v55, 0x0

    cmp-long v6, v6, v55

    if-eqz v6, :cond_4a

    invoke-virtual {v5}, Lﹶﾞ/ᵢי;->ﹶᐧ()Lﹶﾞ/ʿ;

    move-result-object v6

    invoke-static/range {v51 .. v51}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_49

    move-object/from16 v9, v51

    const-wide/16 v6, 0x0

    goto :goto_30

    :cond_49
    const-string v7, "UTF-8"

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    move-object/from16 v9, v51

    invoke-virtual {v9, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    invoke-virtual {v6, v7}, Lﹶﾞ/ʿ;->ˑﹶ([B)J

    move-result-wide v6

    :goto_30
    iget-object v8, v1, Lﹶﾞ/ʿᵢ;->ﹳٴ:Lﹶﾞ/ᵎʻ;

    iget-object v8, v8, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v8}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    invoke-virtual {v8}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    iget-wide v12, v1, Lﹶﾞ/ʿᵢ;->ـˆ:J

    cmp-long v6, v6, v12

    if-eqz v6, :cond_4b

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v6, v4, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v6, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ˋـ()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    goto :goto_31

    :cond_4a
    move-object/from16 v9, v51

    :cond_4b
    :goto_31
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v51, v9

    goto/16 :goto_2f

    :cond_4c
    :try_start_13
    invoke-virtual {v5}, Lﹶﾞ/ᵢי;->ˊᵔ()Lﹶﾞ/ˉʿ;

    move-result-object v1

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/measurement/ˆˑ;

    invoke-virtual {v1}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    invoke-virtual {v1}, Lﹶﾞ/ˎᵎ;->ﹶˎ()V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʼᐧ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ʽ(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ﾞי;->ﹳٴ()[B

    move-result-object v0

    iget-object v6, v1, Lﹶﾞ/ˏʻ;->ᴵˊ:Lﹶﾞ/ᵢי;

    invoke-virtual {v6}, Lﹶﾞ/ᵢי;->ﹶᐧ()Lﹶﾞ/ʿ;

    move-result-object v6

    invoke-virtual {v6, v0}, Lﹶﾞ/ʿ;->ˑﹶ([B)J

    move-result-wide v6

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʼᐧ()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v12, v16

    invoke-virtual {v8, v12, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object/from16 v15, v20

    invoke-virtual {v8, v15, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v9, "metadata"

    invoke-virtual {v8, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_5
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    :try_start_14
    invoke-virtual {v1}, Lﹶﾞ/ˉʿ;->יⁱ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v9, "raw_events_metadata"

    const/4 v13, 0x4

    const/4 v14, 0x0

    invoke-virtual {v0, v9, v14, v8, v13}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_6
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_5
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    :try_start_15
    invoke-virtual {v5}, Lﹶﾞ/ᵢי;->ˊᵔ()Lﹶﾞ/ˉʿ;

    move-result-object v1

    iget-object v0, v3, Lـᵢ/ˆʾ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/יـ;

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lﹶﾞ/יـ;->ʾˋ:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    :goto_32
    const/4 v13, 0x1

    goto :goto_33

    :cond_4e
    invoke-virtual {v5}, Lﹶﾞ/ᵢי;->ʻᵎ()Lﹶﾞ/ـﹶ;

    move-result-object v0

    iget-object v2, v3, Lـᵢ/ˆʾ;->ˈ:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v4, v3, Lـᵢ/ˆʾ;->ˑﹳ:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Lﹶﾞ/ـﹶ;->ٴʿ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v5}, Lﹶﾞ/ᵢי;->ˊᵔ()Lﹶﾞ/ˉʿ;

    move-result-object v16

    invoke-virtual {v5}, Lﹶﾞ/ᵢי;->ⁱˊ()J

    move-result-wide v17

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v19, v2

    invoke-virtual/range {v16 .. v23}, Lﹶﾞ/ˉʿ;->ʻᐧ(JLjava/lang/String;ZZZZ)Lﹶﾞ/ˆʾ;

    move-result-object v2

    move-object/from16 v4, v19

    if-eqz v0, :cond_4f

    iget-wide v8, v2, Lﹶﾞ/ˆʾ;->ˑﹳ:J

    invoke-virtual {v5}, Lﹶﾞ/ᵢי;->ᴵʼ()Lﹶﾞ/ᵎﹶ;

    move-result-object v0

    sget-object v2, Lﹶﾞ/ᴵᵔ;->ʼᐧ:Lﹶﾞ/ˈٴ;

    invoke-virtual {v0, v4, v2}, Lﹶﾞ/ᵎﹶ;->ˎʾ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)I

    move-result v0

    int-to-long v13, v0

    cmp-long v0, v8, v13

    if-gez v0, :cond_4f

    goto :goto_32

    :cond_4f
    move v13, v11

    :goto_33
    invoke-virtual {v1}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    invoke-virtual {v1}, Lﹶﾞ/ˎᵎ;->ﹶˎ()V

    iget-object v0, v3, Lـᵢ/ˆʾ;->ˈ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ʽ(Ljava/lang/String;)V

    iget-object v2, v1, Lﹶﾞ/ˏʻ;->ᴵˊ:Lﹶﾞ/ᵢי;

    invoke-virtual {v2}, Lﹶﾞ/ᵢי;->ﹶᐧ()Lﹶﾞ/ʿ;

    move-result-object v2

    invoke-virtual {v2, v3}, Lﹶﾞ/ʿ;->ˆﹳ(Lـᵢ/ˆʾ;)Lcom/google/android/gms/internal/measurement/ٴʿ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ﾞי;->ﹳٴ()[B

    move-result-object v2

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v4, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "name"

    iget-object v9, v3, Lـᵢ/ˆʾ;->ˑﹳ:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "timestamp"

    iget-wide v9, v3, Lـᵢ/ˆʾ;->ⁱˊ:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v15, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "data"

    invoke-virtual {v4, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v2, "realtime"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    :try_start_16
    invoke-virtual {v1}, Lﹶﾞ/ˉʿ;->יⁱ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    move-object/from16 v11, v24

    const/4 v14, 0x0

    invoke-virtual {v2, v11, v14, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v2, v6, v8

    if-nez v2, :cond_50

    iget-object v2, v1, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v2, Lﹶﾞ/ᵎʻ;

    invoke-virtual {v2}, Lﹶﾞ/ᵎʻ;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v2

    invoke-virtual {v2}, Lﹶﾞ/ﹳـ;->ʼᵢ()Lﹶﾞ/ʼˈ;

    move-result-object v2

    const-string v4, "Failed to insert raw event (got -1). appId"

    invoke-static {v0}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v0

    invoke-virtual {v2, v0, v4}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_16
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_16} :catch_4
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    goto :goto_36

    :catch_4
    move-exception v0

    goto :goto_34

    :cond_50
    const-wide/16 v6, 0x0

    :try_start_17
    iput-wide v6, v5, Lﹶﾞ/ᵢי;->ˈʿ:J

    goto :goto_36

    :goto_34
    iget-object v1, v1, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v1, Lﹶﾞ/ᵎʻ;

    invoke-virtual {v1}, Lﹶﾞ/ᵎʻ;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v1

    invoke-virtual {v1}, Lﹶﾞ/ﹳـ;->ʼᵢ()Lﹶﾞ/ʼˈ;

    move-result-object v1

    const-string v2, "Error storing raw event. appId"

    iget-object v3, v3, Lـᵢ/ˆʾ;->ˈ:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v3

    invoke-virtual {v1, v3, v0, v2}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    goto :goto_36

    :catch_5
    move-exception v0

    goto :goto_35

    :catch_6
    move-exception v0

    :try_start_18
    iget-object v1, v1, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v1, Lﹶﾞ/ᵎʻ;

    invoke-virtual {v1}, Lﹶﾞ/ᵎʻ;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v1

    invoke-virtual {v1}, Lﹶﾞ/ﹳـ;->ʼᵢ()Lﹶﾞ/ʼˈ;

    move-result-object v1

    const-string v3, "Error storing raw event metadata. appId"

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ˆˑ;->ʼᐧ()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    throw v0
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_5
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    :goto_35
    :try_start_19
    invoke-virtual {v5}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v1

    invoke-virtual {v1}, Lﹶﾞ/ﹳـ;->ʼᵢ()Lﹶﾞ/ʼˈ;

    move-result-object v1

    const-string v2, "Data loss. Failed to insert raw event metadata. appId"

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ʽʾ;->יـ()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v3

    invoke-virtual {v1, v3, v0, v2}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_36
    invoke-virtual {v5}, Lﹶﾞ/ᵢי;->ˊᵔ()Lﹶﾞ/ˉʿ;

    move-result-object v0

    invoke-virtual {v0}, Lﹶﾞ/ˉʿ;->ʻˆ()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    invoke-virtual {v5}, Lﹶﾞ/ᵢי;->ˊᵔ()Lﹶﾞ/ˉʿ;

    move-result-object v0

    invoke-virtual {v0}, Lﹶﾞ/ˉʿ;->ˏʻ()V

    invoke-virtual {v5}, Lﹶﾞ/ᵢי;->ˆﾞ()V

    invoke-virtual {v5}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v0

    invoke-virtual {v0}, Lﹶﾞ/ﹳـ;->ˈـ()Lﹶﾞ/ʼˈ;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sub-long v1, v1, v41

    const-wide/32 v3, 0x7a120

    add-long/2addr v1, v3

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Background event processing time, ms"

    invoke-virtual {v0, v1, v2}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :goto_37
    invoke-virtual {v5}, Lﹶﾞ/ᵢי;->ˊᵔ()Lﹶﾞ/ˉʿ;

    move-result-object v1

    invoke-virtual {v1}, Lﹶﾞ/ˉʿ;->ˏʻ()V

    throw v0
.end method

.method public final ᵔﹳ(Ljava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V
    .locals 5

    .prologue
    iget-object v0, p0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v0}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v0, p1}, Lﹶﾞ/ˉʿ;->ᵢﹳ(Ljava/lang/String;)Lﹶﾞ/ʿᵢ;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p1, Lﹶﾞ/ʿᵢ;->ﹳٴ:Lﹶﾞ/ᵎʻ;

    iget-object v1, v0, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v1}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    invoke-virtual {v1}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    iget-boolean v1, p1, Lﹶﾞ/ʿᵢ;->ˋᵔ:Z

    iget-boolean v2, p1, Lﹶﾞ/ʿᵢ;->ʼʼ:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, p2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    or-int/2addr v1, v2

    iput-boolean v1, p1, Lﹶﾞ/ʿᵢ;->ˋᵔ:Z

    iput-boolean p2, p1, Lﹶﾞ/ʿᵢ;->ʼʼ:Z

    iget-object p2, v0, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {p2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    invoke-virtual {p2}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    iget-boolean p2, p1, Lﹶﾞ/ʿᵢ;->ˋᵔ:Z

    iget-object v1, p1, Lﹶﾞ/ʿᵢ;->ᵢˏ:Ljava/lang/Long;

    invoke-static {v1, p3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v3

    or-int/2addr p2, v1

    iput-boolean p2, p1, Lﹶﾞ/ʿᵢ;->ˋᵔ:Z

    iput-object p3, p1, Lﹶﾞ/ʿᵢ;->ᵢˏ:Ljava/lang/Long;

    iget-object p2, v0, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {p2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    invoke-virtual {p2}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    iget-boolean p2, p1, Lﹶﾞ/ʿᵢ;->ˋᵔ:Z

    iget-object p3, p1, Lﹶﾞ/ʿᵢ;->ʾˋ:Ljava/lang/Long;

    invoke-static {p3, p4}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    xor-int/2addr p3, v3

    or-int/2addr p2, p3

    iput-boolean p2, p1, Lﹶﾞ/ʿᵢ;->ˋᵔ:Z

    iput-object p4, p1, Lﹶﾞ/ʿᵢ;->ʾˋ:Ljava/lang/Long;

    invoke-virtual {p1}, Lﹶﾞ/ʿᵢ;->ˉˆ()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {p2}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {p2, p1, v4}, Lﹶﾞ/ˉʿ;->ᐧⁱ(Lﹶﾞ/ʿᵢ;Z)V

    :cond_1
    return-void
.end method

.method public final ᵢˏ()V
    .locals 10

    .prologue
    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v0

    invoke-virtual {v0}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ʻˋ()V

    iget-boolean v0, p0, Lﹶﾞ/ᵢי;->ᵔٴ:Z

    if-nez v0, :cond_b

    const/4 v0, 0x1

    iput-boolean v0, p0, Lﹶﾞ/ᵢי;->ᵔٴ:Z

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v1

    invoke-virtual {v1}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    iget-object v1, p0, Lﹶﾞ/ᵢי;->ᴵˑ:Ljava/nio/channels/FileLock;

    iget-object v2, p0, Lﹶﾞ/ᵢי;->ᵔי:Lﹶﾞ/ᵎʻ;

    const-string v3, "Storage concurrent access okay"

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v1

    iget-object v1, v1, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    invoke-virtual {v1, v3}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    iget-object v1, v1, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v1, Lﹶﾞ/ᵎʻ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v2, Lﹶﾞ/ᵎʻ;->ʾˋ:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/io/File;

    const-string v6, "google_app_measurement.db"

    invoke-direct {v5, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v1, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    iput-object v1, p0, Lﹶﾞ/ᵢי;->ˉـ:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v1

    iput-object v1, p0, Lﹶﾞ/ᵢי;->ᴵˑ:Ljava/nio/channels/FileLock;

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v1

    iget-object v1, v1, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    invoke-virtual {v1, v3}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    iget-object v1, p0, Lﹶﾞ/ᵢי;->ˉـ:Ljava/nio/channels/FileChannel;

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v3

    invoke-virtual {v3}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    const-string v3, "Bad channel to read from"

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_3

    :cond_2
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    :try_start_1
    invoke-virtual {v1, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {v1, v8}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    if-eq v1, v6, :cond_3

    const/4 v8, -0x1

    if-eq v1, v8, :cond_5

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v8

    iget-object v8, v8, Lﹶﾞ/ﹳـ;->ᵎⁱ:Lﹶﾞ/ʼˈ;

    const-string v9, "Unexpected data length. Bytes read"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1, v9}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_3
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :goto_2
    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v8

    iget-object v8, v8, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v9, "Failed to read from channel"

    invoke-virtual {v8, v1, v9}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    :goto_3
    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v1

    iget-object v1, v1, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    invoke-virtual {v1, v3}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    :cond_5
    :goto_4
    invoke-virtual {v2}, Lﹶﾞ/ᵎʻ;->ᵔʾ()Lﹶﾞ/ˆﾞ;

    move-result-object v1

    invoke-virtual {v1}, Lﹶﾞ/ٴᵢ;->ﹶˎ()V

    iget v1, v1, Lﹶﾞ/ˆﾞ;->ᴵᵔ:I

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v2

    invoke-virtual {v2}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    if-le v7, v1, :cond_6

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v0

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Panic: can\'t downgrade version. Previous, current version"

    invoke-virtual {v0, v2, v1, v3}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_6
    if-ge v7, v1, :cond_b

    iget-object v2, p0, Lﹶﾞ/ᵢי;->ˉـ:Ljava/nio/channels/FileChannel;

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v8

    invoke-virtual {v8}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    move-result v8

    if-nez v8, :cond_7

    goto :goto_7

    :cond_7
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :try_start_2
    invoke-virtual {v2, v4, v5}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {v2, v3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v2, v0}, Ljava/nio/channels/FileChannel;->force(Z)V

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    const-wide/16 v5, 0x4

    cmp-long v0, v3, v5

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v0

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v3, "Error writing to channel. Bytes written"

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_6

    :cond_8
    :goto_5
    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v0

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Storage version upgraded. Previous, current version"

    invoke-virtual {v0, v2, v1, v3}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :goto_6
    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v2

    iget-object v2, v2, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v3, "Failed to write to channel"

    invoke-virtual {v2, v0, v3}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_8

    :cond_9
    :goto_7
    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v0

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    invoke-virtual {v0, v3}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    :goto_8
    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v0

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Storage version upgrade failed. Previous, current version"

    invoke-virtual {v0, v2, v1, v3}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :catch_2
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    goto :goto_a

    :catch_4
    move-exception v0

    goto :goto_b

    :cond_a
    :try_start_3
    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v0

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v1, "Storage concurrent data access panic"

    invoke-virtual {v0, v1}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_c

    :goto_9
    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v1

    iget-object v1, v1, Lﹶﾞ/ﹳـ;->ᵎⁱ:Lﹶﾞ/ʼˈ;

    const-string v2, "Storage lock already acquired"

    invoke-virtual {v1, v0, v2}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_c

    :goto_a
    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v1

    iget-object v1, v1, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v2, "Failed to access storage lock file"

    invoke-virtual {v1, v0, v2}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_c

    :goto_b
    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v1

    iget-object v1, v1, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v2, "Failed to acquire storage lock"

    invoke-virtual {v1, v0, v2}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_b
    :goto_c
    return-void
.end method

.method public final ⁱˊ()J
    .locals 8

    .prologue
    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎˊ()Lᵎᴵ/ﹳٴ;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lﹶﾞ/ᵢי;->ᵎⁱ:Lﹶﾞ/ˆˎ;

    invoke-virtual {v2}, Lﹶﾞ/ˎᵎ;->ﹶˎ()V

    invoke-virtual {v2}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    iget-object v3, v2, Lﹶﾞ/ˆˎ;->ٴʼ:Lⁱי/ʻᵎ;

    invoke-virtual {v3}, Lⁱי/ʻᵎ;->ˈ()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_0

    iget-object v2, v2, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v2, Lﹶﾞ/ᵎʻ;

    iget-object v2, v2, Lﹶﾞ/ᵎʻ;->ᵎⁱ:Lﹶﾞ/ᵢﹳ;

    invoke-static {v2}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    invoke-virtual {v2}, Lﹶﾞ/ᵢﹳ;->ʿˎ()Ljava/security/SecureRandom;

    move-result-object v2

    const v4, 0x5265c00

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-long v4, v2

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lⁱי/ʻᵎ;->ᵔᵢ(J)V

    :cond_0
    add-long/2addr v0, v4

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x18

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final ﹳٴ(Ljava/lang/String;)Lﹶﾞ/ᐧˎ;
    .locals 3

    .prologue
    sget-object v0, Lﹶﾞ/ᐧˎ;->ʽ:Lﹶﾞ/ᐧˎ;

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v0

    invoke-virtual {v0}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ʻˋ()V

    iget-object v0, p0, Lﹶﾞ/ᵢי;->ᐧﾞ:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lﹶﾞ/ᐧˎ;

    if-nez v1, :cond_1

    iget-object v1, p0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v1}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v1, p1}, Lﹶﾞ/ˉʿ;->ˊﾞ(Ljava/lang/String;)Lﹶﾞ/ᐧˎ;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lﹶﾞ/ᐧˎ;->ʽ:Lﹶﾞ/ᐧˎ;

    :cond_0
    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v2

    invoke-virtual {v2}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ʻˋ()V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v0}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v0, p1, v1}, Lﹶﾞ/ˉʿ;->ˏⁱ(Ljava/lang/String;Lﹶﾞ/ᐧˎ;)V

    :cond_1
    return-object v1
.end method

.method public final ﹳᐧ()Lﹶﾞ/ʻˋ;
    .locals 1

    iget-object v0, p0, Lﹶﾞ/ᵢי;->ᵔי:Lﹶﾞ/ᵎʻ;

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    return-object v0
.end method

.method public final ﹳﹳ()Lﹶﾞ/ᵢﹳ;
    .locals 1

    iget-object v0, p0, Lﹶﾞ/ᵢי;->ᵔי:Lﹶﾞ/ᵎʻ;

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ᵎⁱ:Lﹶﾞ/ᵢﹳ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    return-object v0
.end method

.method public final ﹶᐧ()Lﹶﾞ/ʿ;
    .locals 1

    iget-object v0, p0, Lﹶﾞ/ᵢי;->ٴᵢ:Lﹶﾞ/ʿ;

    invoke-static {v0}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    return-object v0
.end method

.method public final ﾞʻ(Ljava/util/ArrayList;)V
    .locals 1

    .prologue
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ﹳٴ(Z)V

    iget-object v0, p0, Lﹶﾞ/ᵢי;->ʿ:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object p1

    iget-object p1, p1, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v0, "Set uploading progress before finishing the previous upload"

    invoke-virtual {p1, v0}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lﹶﾞ/ᵢי;->ʿ:Ljava/util/ArrayList;

    return-void
.end method

.method public final ﾞᴵ(Ljava/lang/String;Lﹶﾞ/ˏי;)Landroid/os/Bundle;
    .locals 4

    .prologue
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object p2, p2, Lﹶﾞ/ˏי;->ᴵˊ:Lﹶﾞ/יـ;

    iget-object p2, p2, Lﹶﾞ/יـ;->ʾˋ:Landroid/os/Bundle;

    const-string v1, "_sid"

    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object p2, p0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {p2}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    const-string v1, "_sno"

    invoke-virtual {p2, p1, v1}, Lﹶﾞ/ˉʿ;->ᐧˏ(Ljava/lang/String;Ljava/lang/String;)Lﹶﾞ/יי;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lﹶﾞ/יי;->ˑﹳ:Ljava/lang/Object;

    instance-of p2, p1, Ljava/lang/Long;

    if-eqz p2, :cond_0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    return-object v0
.end method
