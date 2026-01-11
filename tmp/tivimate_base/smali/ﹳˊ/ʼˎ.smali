.class public final Lﹳˊ/ʼˎ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᵢʾ/ˈ;
.implements Lᵢʾ/ˑﹳ;


# instance fields
.field public final ʼˎ:Ljava/util/HashMap;

.field public final ˆʾ:I

.field public final ˈ:Ljava/util/LinkedList;

.field public ˉʿ:Lᴵˈ/ⁱˊ;

.field public final ˑﹳ:Lᵢʾ/ﹳٴ;

.field public ٴﹶ:Z

.field public final ᵎﹶ:Lˑʼ/ᵎˊ;

.field public final synthetic ᵔʾ:Lﹳˊ/ˈ;

.field public final ᵔᵢ:Ljava/util/HashSet;

.field public final ﾞʻ:Ljava/util/ArrayList;

.field public final ﾞᴵ:Lﹳˊ/ﹳٴ;


# direct methods
.method public constructor <init>(Lﹳˊ/ˈ;Lᵢʾ/ʽ;)V
    .locals 7

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹳˊ/ʼˎ;->ᵔʾ:Lﹳˊ/ˈ;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lﹳˊ/ʼˎ;->ˈ:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lﹳˊ/ʼˎ;->ᵔᵢ:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lﹳˊ/ʼˎ;->ʼˎ:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lﹳˊ/ʼˎ;->ﾞʻ:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lﹳˊ/ʼˎ;->ˉʿ:Lᴵˈ/ⁱˊ;

    iget-object p1, p1, Lﹳˊ/ˈ;->ˆﾞ:Lcom/google/android/gms/internal/measurement/ˉٴ;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object p1, p2, Lᵢʾ/ʽ;->ﹳٴ:Landroid/content/Context;

    new-instance v0, Lᵢ/ﹳٴ;

    const/16 v1, 0x10

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Lᵢ/ﹳٴ;-><init>(IZ)V

    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iget-object v3, v0, Lᵢ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v3, Lיـ/ﾞᴵ;

    if-nez v3, :cond_0

    new-instance v3, Lיـ/ﾞᴵ;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lיـ/ﾞᴵ;-><init>(I)V

    iput-object v3, v0, Lᵢ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    :cond_0
    iget-object v3, v0, Lᵢ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v3, Lיـ/ﾞᴵ;

    invoke-virtual {v3, v1}, Lיـ/ﾞᴵ;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lᵢ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lᵢ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    new-instance v3, Lcom/parse/ٴʼ;

    iget-object p1, v0, Lᵢ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast p1, Lיـ/ﾞᴵ;

    iget-object v1, v0, Lᵢ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Lᵢ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, p1, v1, v0}, Lcom/parse/ٴʼ;-><init>(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p2, Lᵢʾ/ʽ;->ʽ:Lˑʼ/ᵎˊ;

    iget-object p1, p1, Lˑʼ/ᵎˊ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Lˆˆ/ⁱˊ;

    invoke-static {p1}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iget-object v4, p2, Lᵢʾ/ʽ;->ˈ:Lٴﾞ/ˉʿ;

    iget-object v1, p2, Lᵢʾ/ʽ;->ﹳٴ:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lˆˆ/ˈ;

    move-object v6, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lˆˆ/ˈ;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/parse/ٴʼ;Lٴﾞ/ˉʿ;Lﹳˊ/ʼˎ;Lﹳˊ/ʼˎ;)V

    iget-object p1, p2, Lᵢʾ/ʽ;->ⁱˊ:Ljava/lang/String;

    if-eqz p1, :cond_1

    move-object v1, v0

    check-cast v1, Lٴﾞ/ˑﹳ;

    iput-object p1, v1, Lٴﾞ/ˑﹳ;->יـ:Ljava/lang/String;

    :cond_1
    iput-object v0, v5, Lﹳˊ/ʼˎ;->ˑﹳ:Lᵢʾ/ﹳٴ;

    iget-object p1, p2, Lᵢʾ/ʽ;->ˑﹳ:Lﹳˊ/ﹳٴ;

    iput-object p1, v5, Lﹳˊ/ʼˎ;->ﾞᴵ:Lﹳˊ/ﹳٴ;

    new-instance p1, Lˑʼ/ᵎˊ;

    const/16 v0, 0x17

    invoke-direct {p1, v0}, Lˑʼ/ᵎˊ;-><init>(I)V

    iput-object p1, v5, Lﹳˊ/ʼˎ;->ᵎﹶ:Lˑʼ/ᵎˊ;

    iget p1, p2, Lᵢʾ/ʽ;->ﾞᴵ:I

    iput p1, v5, Lﹳˊ/ʼˎ;->ˆʾ:I

    return-void
.end method


# virtual methods
.method public final ʼˎ(I)V
    .locals 8

    .prologue
    iget-object v0, p0, Lﹳˊ/ʼˎ;->ᵔʾ:Lﹳˊ/ˈ;

    iget-object v1, v0, Lﹳˊ/ˈ;->ˆﾞ:Lcom/google/android/gms/internal/measurement/ˉٴ;

    iget-object v2, v0, Lﹳˊ/ˈ;->ˆﾞ:Lcom/google/android/gms/internal/measurement/ˉٴ;

    invoke-static {v2}, Lٴﾞ/ʻٴ;->ⁱˊ(Landroid/os/Handler;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lﹳˊ/ʼˎ;->ˉʿ:Lᴵˈ/ⁱˊ;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lﹳˊ/ʼˎ;->ٴﹶ:Z

    iget-object v4, p0, Lﹳˊ/ʼˎ;->ˑﹳ:Lᵢʾ/ﹳٴ;

    invoke-interface {v4}, Lᵢʾ/ﹳٴ;->ˆʾ()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lﹳˊ/ʼˎ;->ᵎﹶ:Lˑʼ/ᵎˊ;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "The connection to Google Play services was lost"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-ne p1, v3, :cond_0

    const-string p1, " due to service disconnection."

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 v7, 0x3

    if-ne p1, v7, :cond_1

    const-string p1, " due to dead object exception."

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    const-string p1, " Last reason for disconnect: "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v4, Lcom/google/android/gms/common/api/Status;

    const/16 v6, 0x14

    invoke-direct {v4, v6, p1, v2, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lᴵˈ/ⁱˊ;)V

    invoke-virtual {v5, v3, v4}, Lˑʼ/ᵎˊ;->ˉـ(ZLcom/google/android/gms/common/api/Status;)V

    const/16 p1, 0x9

    iget-object v2, p0, Lﹳˊ/ʼˎ;->ﾞᴵ:Lﹳˊ/ﹳٴ;

    invoke-static {v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, p1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/16 p1, 0xb

    invoke-static {v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object p1, v0, Lﹳˊ/ˈ;->ٴᵢ:Lˑʼ/ᵎˊ;

    iget-object p1, p1, Lˑʼ/ᵎˊ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    iget-object p1, p0, Lﹳˊ/ʼˎ;->ʼˎ:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-static {p1}, Lˉˆ/ٴᴵ;->ˑﹳ(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object p1

    throw p1
.end method

.method public final ʼᐧ()V
    .locals 5

    .prologue
    iget-object v0, p0, Lﹳˊ/ʼˎ;->ᵔʾ:Lﹳˊ/ˈ;

    iget-object v0, v0, Lﹳˊ/ˈ;->ˆﾞ:Lcom/google/android/gms/internal/measurement/ˉٴ;

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ⁱˊ(Landroid/os/Handler;)V

    sget-object v0, Lﹳˊ/ˈ;->ˈʿ:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lﹳˊ/ʼˎ;->ⁱˊ(Lcom/google/android/gms/common/api/Status;)V

    iget-object v1, p0, Lﹳˊ/ʼˎ;->ᵎﹶ:Lˑʼ/ᵎˊ;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lˑʼ/ᵎˊ;->ˉـ(ZLcom/google/android/gms/common/api/Status;)V

    iget-object v0, p0, Lﹳˊ/ʼˎ;->ʼˎ:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-array v1, v2, [Lﹳˊ/ﾞᴵ;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lﹳˊ/ﾞᴵ;

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    new-instance v3, Lﹳˊ/ﹳᐧ;

    new-instance v4, Lˏـ/ᵎﹶ;

    invoke-direct {v4}, Lˏـ/ᵎﹶ;-><init>()V

    invoke-direct {v3, v4}, Lﹳˊ/ﹳᐧ;-><init>(Lˏـ/ᵎﹶ;)V

    invoke-virtual {p0, v3}, Lﹳˊ/ʼˎ;->ᵔʾ(Lﹳˊ/ˉʿ;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lᴵˈ/ⁱˊ;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lᴵˈ/ⁱˊ;-><init>(I)V

    invoke-virtual {p0, v0}, Lﹳˊ/ʼˎ;->ﹳٴ(Lᴵˈ/ⁱˊ;)V

    iget-object v0, p0, Lﹳˊ/ʼˎ;->ˑﹳ:Lᵢʾ/ﹳٴ;

    invoke-interface {v0}, Lᵢʾ/ﹳٴ;->ﹳٴ()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lⁱʽ/ﹳٴ;

    invoke-direct {v1, p0}, Lⁱʽ/ﹳٴ;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lᵢʾ/ﹳٴ;->ʼˎ(Lⁱʽ/ﹳٴ;)V

    :cond_1
    return-void
.end method

.method public final ʽ(I)V
    .locals 3

    .prologue
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lﹳˊ/ʼˎ;->ᵔʾ:Lﹳˊ/ˈ;

    iget-object v1, v1, Lﹳˊ/ˈ;->ˆﾞ:Lcom/google/android/gms/internal/measurement/ˉٴ;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, p1}, Lﹳˊ/ʼˎ;->ʼˎ(I)V

    return-void

    :cond_0
    new-instance v0, Landroidx/leanback/widget/ˏᵢ;

    const/4 v2, 0x4

    invoke-direct {v0, p1, v2, p0}, Landroidx/leanback/widget/ˏᵢ;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final ˆʾ()V
    .locals 5

    iget-object v0, p0, Lﹳˊ/ʼˎ;->ᵔʾ:Lﹳˊ/ˈ;

    iget-object v1, v0, Lﹳˊ/ˈ;->ˆﾞ:Lcom/google/android/gms/internal/measurement/ˉٴ;

    const/16 v2, 0xc

    iget-object v3, p0, Lﹳˊ/ʼˎ;->ﾞᴵ:Lﹳˊ/ﹳٴ;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-wide v3, v0, Lﹳˊ/ˈ;->ʾˋ:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final ˈ()V
    .locals 3

    .prologue
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lﹳˊ/ʼˎ;->ᵔʾ:Lﹳˊ/ˈ;

    iget-object v1, v1, Lﹳˊ/ˈ;->ˆﾞ:Lcom/google/android/gms/internal/measurement/ˉٴ;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lﹳˊ/ʼˎ;->ᵔᵢ()V

    return-void

    :cond_0
    new-instance v0, Landroidx/leanback/widget/ᵔʾ;

    const/16 v2, 0x1c

    invoke-direct {v0, v2, p0}, Landroidx/leanback/widget/ᵔʾ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final ˉʿ()V
    .locals 11

    .prologue
    iget-object v0, p0, Lﹳˊ/ʼˎ;->ᵔʾ:Lﹳˊ/ˈ;

    iget-object v1, v0, Lﹳˊ/ˈ;->ˆﾞ:Lcom/google/android/gms/internal/measurement/ˉٴ;

    invoke-static {v1}, Lٴﾞ/ʻٴ;->ⁱˊ(Landroid/os/Handler;)V

    iget-object v1, p0, Lﹳˊ/ʼˎ;->ˑﹳ:Lᵢʾ/ﹳٴ;

    invoke-interface {v1}, Lᵢʾ/ﹳٴ;->ﹳٴ()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-interface {v1}, Lᵢʾ/ﹳٴ;->ˑﹳ()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_4

    :cond_0
    const/16 v2, 0xa

    :try_start_0
    iget-object v3, v0, Lﹳˊ/ˈ;->ٴᵢ:Lˑʼ/ᵎˊ;

    iget-object v4, v0, Lﹳˊ/ˈ;->ᴵᵔ:Landroid/content/Context;

    iget-object v5, v3, Lˑʼ/ᵎˊ;->ᴵˊ:Ljava/lang/Object;

    check-cast v5, Landroid/util/SparseIntArray;

    invoke-static {v4}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    invoke-interface {v1}, Lᵢʾ/ﹳٴ;->ˈ()I

    move-result v6

    iget-object v7, v3, Lˑʼ/ᵎˊ;->ᴵˊ:Ljava/lang/Object;

    check-cast v7, Landroid/util/SparseIntArray;

    const/4 v8, -0x1

    invoke-virtual {v7, v6, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    if-eq v7, v8, :cond_1

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    move v9, v7

    :goto_0
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    if-ge v9, v10, :cond_3

    invoke-virtual {v5, v9}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v10

    if-le v10, v6, :cond_2

    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    if-nez v10, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_3
    move v7, v8

    :goto_1
    if-ne v7, v8, :cond_4

    iget-object v3, v3, Lˑʼ/ᵎˊ;->ʽʽ:Ljava/lang/Object;

    check-cast v3, Lᴵˈ/ˑﹳ;

    invoke-virtual {v3, v4, v6}, Lᴵˈ/ﾞᴵ;->ⁱˊ(Landroid/content/Context;I)I

    move-result v3

    move v7, v3

    :cond_4
    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    :goto_2
    if-eqz v7, :cond_5

    new-instance v0, Lᴵˈ/ⁱˊ;

    const/4 v3, 0x0

    invoke-direct {v0, v7, v3}, Lᴵˈ/ⁱˊ;-><init>(ILandroid/app/PendingIntent;)V

    const-string v4, "GoogleApiManager"

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lᴵˈ/ⁱˊ;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The service for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not available: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    invoke-virtual {p0, v0, v3}, Lﹳˊ/ʼˎ;->ˉˆ(Lᴵˈ/ⁱˊ;Ljava/lang/RuntimeException;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_5
    new-instance v3, Lʼٴ/ٴᵢ;

    iget-object v4, p0, Lﹳˊ/ʼˎ;->ﾞᴵ:Lﹳˊ/ﹳٴ;

    invoke-direct {v3, v0, v1, v4}, Lʼٴ/ٴᵢ;-><init>(Lﹳˊ/ˈ;Lᵢʾ/ﹳٴ;Lﹳˊ/ﹳٴ;)V

    invoke-interface {v1}, Lᵢʾ/ﹳٴ;->ﾞʻ()Z

    move-result v0

    if-nez v0, :cond_6

    :try_start_1
    invoke-interface {v1, v3}, Lᵢʾ/ﹳٴ;->ﾞᴵ(Lٴﾞ/ˈ;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    new-instance v1, Lᴵˈ/ⁱˊ;

    invoke-direct {v1, v2}, Lᴵˈ/ⁱˊ;-><init>(I)V

    invoke-virtual {p0, v1, v0}, Lﹳˊ/ʼˎ;->ˉˆ(Lᴵˈ/ⁱˊ;Ljava/lang/RuntimeException;)V

    return-void

    :cond_6
    const/4 v0, 0x0

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    throw v0

    :goto_3
    new-instance v1, Lᴵˈ/ⁱˊ;

    invoke-direct {v1, v2}, Lᴵˈ/ⁱˊ;-><init>(I)V

    invoke-virtual {p0, v1, v0}, Lﹳˊ/ʼˎ;->ˉˆ(Lᴵˈ/ⁱˊ;Ljava/lang/RuntimeException;)V

    :cond_7
    :goto_4
    return-void
.end method

.method public final ˉˆ(Lᴵˈ/ⁱˊ;Ljava/lang/RuntimeException;)V
    .locals 6

    .prologue
    iget-object v0, p0, Lﹳˊ/ʼˎ;->ᵔʾ:Lﹳˊ/ˈ;

    iget-object v0, v0, Lﹳˊ/ˈ;->ˆﾞ:Lcom/google/android/gms/internal/measurement/ˉٴ;

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ⁱˊ(Landroid/os/Handler;)V

    iget-object v0, p0, Lﹳˊ/ʼˎ;->ᵔʾ:Lﹳˊ/ˈ;

    iget-object v0, v0, Lﹳˊ/ˈ;->ˆﾞ:Lcom/google/android/gms/internal/measurement/ˉٴ;

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ⁱˊ(Landroid/os/Handler;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lﹳˊ/ʼˎ;->ˉʿ:Lᴵˈ/ⁱˊ;

    iget-object v1, p0, Lﹳˊ/ʼˎ;->ᵔʾ:Lﹳˊ/ˈ;

    iget-object v1, v1, Lﹳˊ/ˈ;->ٴᵢ:Lˑʼ/ᵎˊ;

    iget-object v1, v1, Lˑʼ/ᵎˊ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    invoke-virtual {p0, p1}, Lﹳˊ/ʼˎ;->ﹳٴ(Lᴵˈ/ⁱˊ;)V

    iget-object v1, p0, Lﹳˊ/ʼˎ;->ˑﹳ:Lᵢʾ/ﹳٴ;

    instance-of v1, v1, Lˆˆ/ˈ;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget v1, p1, Lᴵˈ/ⁱˊ;->ᴵˊ:I

    const/16 v3, 0x18

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lﹳˊ/ʼˎ;->ᵔʾ:Lﹳˊ/ˈ;

    iput-boolean v2, v1, Lﹳˊ/ˈ;->ᴵˊ:Z

    iget-object v1, v1, Lﹳˊ/ˈ;->ˆﾞ:Lcom/google/android/gms/internal/measurement/ˉٴ;

    const/16 v3, 0x13

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/32 v4, 0x493e0

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    iget v1, p1, Lᴵˈ/ⁱˊ;->ᴵˊ:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    sget-object p1, Lﹳˊ/ˈ;->ˑٴ:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lﹳˊ/ʼˎ;->ⁱˊ(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :cond_1
    iget-object v1, p0, Lﹳˊ/ʼˎ;->ˈ:Ljava/util/LinkedList;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object p1, p0, Lﹳˊ/ʼˎ;->ˉʿ:Lᴵˈ/ⁱˊ;

    return-void

    :cond_2
    if-eqz p2, :cond_3

    iget-object p1, p0, Lﹳˊ/ʼˎ;->ᵔʾ:Lﹳˊ/ˈ;

    iget-object p1, p1, Lﹳˊ/ˈ;->ˆﾞ:Lcom/google/android/gms/internal/measurement/ˉٴ;

    invoke-static {p1}, Lٴﾞ/ʻٴ;->ⁱˊ(Landroid/os/Handler;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p2, p1}, Lﹳˊ/ʼˎ;->ﾞᴵ(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    return-void

    :cond_3
    iget-object p2, p0, Lﹳˊ/ʼˎ;->ᵔʾ:Lﹳˊ/ˈ;

    iget-boolean p2, p2, Lﹳˊ/ˈ;->ᵔٴ:Z

    if-eqz p2, :cond_8

    iget-object p2, p0, Lﹳˊ/ʼˎ;->ﾞᴵ:Lﹳˊ/ﹳٴ;

    invoke-static {p2, p1}, Lﹳˊ/ˈ;->ⁱˊ(Lﹳˊ/ﹳٴ;Lᴵˈ/ⁱˊ;)Lcom/google/android/gms/common/api/Status;

    move-result-object p2

    invoke-virtual {p0, p2, v0, v2}, Lﹳˊ/ʼˎ;->ﾞᴵ(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    iget-object p2, p0, Lﹳˊ/ʼˎ;->ˈ:Ljava/util/LinkedList;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lﹳˊ/ʼˎ;->ﾞʻ(Lᴵˈ/ⁱˊ;)Z

    move-result p2

    if-nez p2, :cond_7

    iget-object p2, p0, Lﹳˊ/ʼˎ;->ᵔʾ:Lﹳˊ/ˈ;

    iget v0, p0, Lﹳˊ/ʼˎ;->ˆʾ:I

    invoke-virtual {p2, p1, v0}, Lﹳˊ/ˈ;->ﹳٴ(Lᴵˈ/ⁱˊ;I)Z

    move-result p2

    if-nez p2, :cond_7

    iget p2, p1, Lᴵˈ/ⁱˊ;->ᴵˊ:I

    const/16 v0, 0x12

    if-ne p2, v0, :cond_5

    iput-boolean v2, p0, Lﹳˊ/ʼˎ;->ٴﹶ:Z

    :cond_5
    iget-boolean p2, p0, Lﹳˊ/ʼˎ;->ٴﹶ:Z

    if-eqz p2, :cond_6

    iget-object p1, p0, Lﹳˊ/ʼˎ;->ᵔʾ:Lﹳˊ/ˈ;

    iget-object p2, p0, Lﹳˊ/ʼˎ;->ﾞᴵ:Lﹳˊ/ﹳٴ;

    iget-object p1, p1, Lﹳˊ/ˈ;->ˆﾞ:Lcom/google/android/gms/internal/measurement/ˉٴ;

    const/16 v0, 0x9

    invoke-static {p1, v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_6
    iget-object p2, p0, Lﹳˊ/ʼˎ;->ﾞᴵ:Lﹳˊ/ﹳٴ;

    invoke-static {p2, p1}, Lﹳˊ/ˈ;->ⁱˊ(Lﹳˊ/ﹳٴ;Lᴵˈ/ⁱˊ;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lﹳˊ/ʼˎ;->ⁱˊ(Lcom/google/android/gms/common/api/Status;)V

    :cond_7
    :goto_0
    return-void

    :cond_8
    iget-object p2, p0, Lﹳˊ/ʼˎ;->ﾞᴵ:Lﹳˊ/ﹳٴ;

    invoke-static {p2, p1}, Lﹳˊ/ˈ;->ⁱˊ(Lﹳˊ/ﹳٴ;Lᴵˈ/ⁱˊ;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lﹳˊ/ʼˎ;->ⁱˊ(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final ˑﹳ(Lᴵˈ/ⁱˊ;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lﹳˊ/ʼˎ;->ˉˆ(Lᴵˈ/ⁱˊ;Ljava/lang/RuntimeException;)V

    return-void
.end method

.method public final ٴﹶ(Lﹳˊ/ˉʿ;)Z
    .locals 13

    .prologue
    const-string v0, "DeadObjectException thrown while running ApiCallRunner."

    const/4 v1, 0x1

    if-eqz p1, :cond_a

    invoke-virtual {p1, p0}, Lﹳˊ/ˉʿ;->ⁱˊ(Lﹳˊ/ʼˎ;)[Lᴵˈ/ˈ;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    array-length v5, v2

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    iget-object v5, p0, Lﹳˊ/ʼˎ;->ˑﹳ:Lᵢʾ/ﹳٴ;

    invoke-interface {v5}, Lᵢʾ/ﹳٴ;->ᵎﹶ()[Lᴵˈ/ˈ;

    move-result-object v5

    if-nez v5, :cond_1

    new-array v5, v3, [Lᴵˈ/ˈ;

    :cond_1
    new-instance v6, Lיـ/ˑﹳ;

    array-length v7, v5

    invoke-direct {v6, v7}, Lיـ/ﹳᐧ;-><init>(I)V

    move v7, v3

    :goto_0
    array-length v8, v5

    if-ge v7, v8, :cond_2

    aget-object v8, v5, v7

    iget-object v9, v8, Lᴵˈ/ˈ;->ʾˋ:Ljava/lang/String;

    invoke-virtual {v8}, Lᴵˈ/ˈ;->ﹳٴ()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v9, v8}, Lיـ/ﹳᐧ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    array-length v5, v2

    move v7, v3

    :goto_1
    if-ge v7, v5, :cond_4

    aget-object v8, v2, v7

    iget-object v9, v8, Lᴵˈ/ˈ;->ʾˋ:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lיـ/ﹳᐧ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v8}, Lᴵˈ/ˈ;->ﹳٴ()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-gez v9, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    move-object v8, v4

    :cond_5
    :goto_3
    if-nez v8, :cond_6

    iget-object v2, p0, Lﹳˊ/ʼˎ;->ᵎﹶ:Lˑʼ/ᵎˊ;

    iget-object v3, p0, Lﹳˊ/ʼˎ;->ˑﹳ:Lᵢʾ/ﹳٴ;

    invoke-interface {v3}, Lᵢʾ/ﹳٴ;->ﾞʻ()Z

    move-result v4

    invoke-virtual {p1, v2, v4}, Lﹳˊ/ˉʿ;->ﾞᴵ(Lˑʼ/ᵎˊ;Z)V

    :try_start_0
    invoke-virtual {p1, p0}, Lﹳˊ/ˉʿ;->ˑﹳ(Lﹳˊ/ʼˎ;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    invoke-virtual {p0, v1}, Lﹳˊ/ʼˎ;->ʽ(I)V

    invoke-interface {v3, v0}, Lᵢʾ/ﹳٴ;->ʽ(Ljava/lang/String;)V

    return v1

    :cond_6
    iget-object v0, p0, Lﹳˊ/ʼˎ;->ˑﹳ:Lᵢʾ/ﹳٴ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v8, Lᴵˈ/ˈ;->ʾˋ:Ljava/lang/String;

    invoke-virtual {v8}, Lᴵˈ/ˈ;->ﹳٴ()J

    move-result-wide v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " could not execute call because it requires feature ("

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")."

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GoogleApiManager"

    nop

    iget-object v0, p0, Lﹳˊ/ʼˎ;->ᵔʾ:Lﹳˊ/ˈ;

    iget-boolean v0, v0, Lﹳˊ/ˈ;->ᵔٴ:Z

    if-eqz v0, :cond_9

    invoke-virtual {p1, p0}, Lﹳˊ/ˉʿ;->ﹳٴ(Lﹳˊ/ʼˎ;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p1, p0, Lﹳˊ/ʼˎ;->ﾞᴵ:Lﹳˊ/ﹳٴ;

    new-instance v0, Lﹳˊ/ˆʾ;

    invoke-direct {v0, p1, v8}, Lﹳˊ/ˆʾ;-><init>(Lﹳˊ/ﹳٴ;Lᴵˈ/ˈ;)V

    iget-object p1, p0, Lﹳˊ/ʼˎ;->ﾞʻ:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const-wide/16 v1, 0x1388

    const/16 v5, 0xf

    if-ltz p1, :cond_7

    iget-object v0, p0, Lﹳˊ/ʼˎ;->ﾞʻ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lﹳˊ/ˆʾ;

    iget-object v0, p0, Lﹳˊ/ʼˎ;->ᵔʾ:Lﹳˊ/ˈ;

    iget-object v0, v0, Lﹳˊ/ˈ;->ˆﾞ:Lcom/google/android/gms/internal/measurement/ˉٴ;

    invoke-virtual {v0, v5, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lﹳˊ/ʼˎ;->ᵔʾ:Lﹳˊ/ˈ;

    iget-object v0, v0, Lﹳˊ/ˈ;->ˆﾞ:Lcom/google/android/gms/internal/measurement/ˉٴ;

    invoke-static {v0, v5, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_4

    :cond_7
    iget-object p1, p0, Lﹳˊ/ʼˎ;->ﾞʻ:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lﹳˊ/ʼˎ;->ᵔʾ:Lﹳˊ/ˈ;

    iget-object p1, p1, Lﹳˊ/ˈ;->ˆﾞ:Lcom/google/android/gms/internal/measurement/ˉٴ;

    invoke-static {p1, v5, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p1, v5, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object p1, p0, Lﹳˊ/ʼˎ;->ᵔʾ:Lﹳˊ/ˈ;

    iget-object p1, p1, Lﹳˊ/ˈ;->ˆﾞ:Lcom/google/android/gms/internal/measurement/ˉٴ;

    const/16 v1, 0x10

    invoke-static {p1, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    new-instance p1, Lᴵˈ/ⁱˊ;

    const/4 v0, 0x2

    invoke-direct {p1, v0, v4}, Lᴵˈ/ⁱˊ;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, p1}, Lﹳˊ/ʼˎ;->ﾞʻ(Lᴵˈ/ⁱˊ;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lﹳˊ/ʼˎ;->ᵔʾ:Lﹳˊ/ˈ;

    iget v1, p0, Lﹳˊ/ʼˎ;->ˆʾ:I

    invoke-virtual {v0, p1, v1}, Lﹳˊ/ˈ;->ﹳٴ(Lᴵˈ/ⁱˊ;I)Z

    :cond_8
    :goto_4
    return v3

    :cond_9
    new-instance v0, Lcom/google/android/gms/common/api/UnsupportedApiCallException;

    invoke-direct {v0, v8}, Lcom/google/android/gms/common/api/UnsupportedApiCallException;-><init>(Lᴵˈ/ˈ;)V

    invoke-virtual {p1, v0}, Lﹳˊ/ˉʿ;->ˈ(Ljava/lang/Exception;)V

    return v1

    :cond_a
    iget-object v2, p0, Lﹳˊ/ʼˎ;->ᵎﹶ:Lˑʼ/ᵎˊ;

    iget-object v3, p0, Lﹳˊ/ʼˎ;->ˑﹳ:Lᵢʾ/ﹳٴ;

    invoke-interface {v3}, Lᵢʾ/ﹳٴ;->ﾞʻ()Z

    move-result v4

    invoke-virtual {p1, v2, v4}, Lﹳˊ/ˉʿ;->ﾞᴵ(Lˑʼ/ᵎˊ;Z)V

    :try_start_1
    invoke-virtual {p1, p0}, Lﹳˊ/ˉʿ;->ˑﹳ(Lﹳˊ/ʼˎ;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    :catch_1
    invoke-virtual {p0, v1}, Lﹳˊ/ʼˎ;->ʽ(I)V

    invoke-interface {v3, v0}, Lᵢʾ/ﹳٴ;->ʽ(Ljava/lang/String;)V

    return v1
.end method

.method public final ᵎﹶ()V
    .locals 6

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lﹳˊ/ʼˎ;->ˈ:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lﹳˊ/ˉʿ;

    iget-object v5, p0, Lﹳˊ/ʼˎ;->ˑﹳ:Lᵢʾ/ﹳٴ;

    invoke-interface {v5}, Lᵢʾ/ﹳٴ;->ﹳٴ()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v4}, Lﹳˊ/ʼˎ;->ٴﹶ(Lﹳˊ/ˉʿ;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final ᵔʾ(Lﹳˊ/ˉʿ;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lﹳˊ/ʼˎ;->ᵔʾ:Lﹳˊ/ˈ;

    iget-object v0, v0, Lﹳˊ/ˈ;->ˆﾞ:Lcom/google/android/gms/internal/measurement/ˉٴ;

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ⁱˊ(Landroid/os/Handler;)V

    iget-object v0, p0, Lﹳˊ/ʼˎ;->ˑﹳ:Lᵢʾ/ﹳٴ;

    invoke-interface {v0}, Lᵢʾ/ﹳٴ;->ﹳٴ()Z

    move-result v0

    iget-object v1, p0, Lﹳˊ/ʼˎ;->ˈ:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lﹳˊ/ʼˎ;->ٴﹶ(Lﹳˊ/ˉʿ;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lﹳˊ/ʼˎ;->ˆʾ()V

    return-void

    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lﹳˊ/ʼˎ;->ˉʿ:Lᴵˈ/ⁱˊ;

    if-eqz p1, :cond_2

    iget v0, p1, Lᴵˈ/ⁱˊ;->ᴵˊ:I

    if-eqz v0, :cond_2

    iget-object v0, p1, Lᴵˈ/ⁱˊ;->ʽʽ:Landroid/app/PendingIntent;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lﹳˊ/ʼˎ;->ˉˆ(Lᴵˈ/ⁱˊ;Ljava/lang/RuntimeException;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lﹳˊ/ʼˎ;->ˉʿ()V

    return-void
.end method

.method public final ᵔᵢ()V
    .locals 3

    .prologue
    iget-object v0, p0, Lﹳˊ/ʼˎ;->ᵔʾ:Lﹳˊ/ˈ;

    iget-object v1, v0, Lﹳˊ/ˈ;->ˆﾞ:Lcom/google/android/gms/internal/measurement/ˉٴ;

    invoke-static {v1}, Lٴﾞ/ʻٴ;->ⁱˊ(Landroid/os/Handler;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lﹳˊ/ʼˎ;->ˉʿ:Lᴵˈ/ⁱˊ;

    sget-object v1, Lᴵˈ/ⁱˊ;->ᴵᵔ:Lᴵˈ/ⁱˊ;

    invoke-virtual {p0, v1}, Lﹳˊ/ʼˎ;->ﹳٴ(Lᴵˈ/ⁱˊ;)V

    iget-object v0, v0, Lﹳˊ/ˈ;->ˆﾞ:Lcom/google/android/gms/internal/measurement/ˉٴ;

    iget-boolean v1, p0, Lﹳˊ/ʼˎ;->ٴﹶ:Z

    if-eqz v1, :cond_0

    const/16 v1, 0xb

    iget-object v2, p0, Lﹳˊ/ʼˎ;->ﾞᴵ:Lﹳˊ/ﹳٴ;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lﹳˊ/ʼˎ;->ٴﹶ:Z

    :cond_0
    iget-object v0, p0, Lﹳˊ/ʼˎ;->ʼˎ:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lﹳˊ/ʼˎ;->ᵎﹶ()V

    invoke-virtual {p0}, Lﹳˊ/ʼˎ;->ˆʾ()V

    return-void

    :cond_1
    invoke-static {v0}, Lˉˆ/ٴᴵ;->ˑﹳ(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object v0

    throw v0
.end method

.method public final ⁱˊ(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, Lﹳˊ/ʼˎ;->ᵔʾ:Lﹳˊ/ˈ;

    iget-object v0, v0, Lﹳˊ/ˈ;->ˆﾞ:Lcom/google/android/gms/internal/measurement/ˉٴ;

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ⁱˊ(Landroid/os/Handler;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lﹳˊ/ʼˎ;->ﾞᴵ(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    return-void
.end method

.method public final ﹳٴ(Lᴵˈ/ⁱˊ;)V
    .locals 3

    .prologue
    iget-object v0, p0, Lﹳˊ/ʼˎ;->ᵔᵢ:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lᴵˈ/ⁱˊ;->ᴵᵔ:Lᴵˈ/ⁱˊ;

    invoke-static {p1, v0}, Lٴﾞ/ʻٴ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lﹳˊ/ʼˎ;->ˑﹳ:Lᵢʾ/ﹳٴ;

    invoke-interface {p1}, Lᵢʾ/ﹳٴ;->ᵔᵢ()V

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_2
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public final ﾞʻ(Lᴵˈ/ⁱˊ;)Z
    .locals 1

    .prologue
    sget-object p1, Lﹳˊ/ˈ;->ˋᵔ:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final ﾞᴵ(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V
    .locals 4

    .prologue
    iget-object v0, p0, Lﹳˊ/ʼˎ;->ᵔʾ:Lﹳˊ/ˈ;

    iget-object v0, v0, Lﹳˊ/ˈ;->ˆﾞ:Lcom/google/android/gms/internal/measurement/ˉٴ;

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ⁱˊ(Landroid/os/Handler;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz p2, :cond_1

    move v0, v1

    :cond_1
    if-eq v2, v0, :cond_6

    iget-object v0, p0, Lﹳˊ/ʼˎ;->ˈ:Ljava/util/LinkedList;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lﹳˊ/ˉʿ;

    if-eqz p3, :cond_3

    iget v2, v1, Lﹳˊ/ˉʿ;->ﹳٴ:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {v1, p1}, Lﹳˊ/ˉʿ;->ʽ(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v1, p2}, Lﹳˊ/ˉʿ;->ˈ(Ljava/lang/Exception;)V

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_5
    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Status XOR exception should be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
