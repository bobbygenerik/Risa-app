.class public final Landroidx/lifecycle/ـˆ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʼˎ:Ljava/util/ArrayList;

.field public ʽ:Lᵔﹳ/ﹳٴ;

.field public final ˆʾ:Lᵎˈ/ٴᵢ;

.field public ˈ:Landroidx/lifecycle/ᵔʾ;

.field public final ˑﹳ:Ljava/lang/ref/WeakReference;

.field public ᵎﹶ:Z

.field public ᵔᵢ:Z

.field public final ⁱˊ:Z

.field public ﹳٴ:Landroidx/leanback/widget/ˉˆ;

.field public ﾞᴵ:I


# direct methods
.method public constructor <init>(Landroidx/lifecycle/ʽﹳ;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/leanback/widget/ˉˆ;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/leanback/widget/ˉˆ;-><init>(I)V

    iput-object v0, p0, Landroidx/lifecycle/ـˆ;->ﹳٴ:Landroidx/leanback/widget/ˉˆ;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/lifecycle/ـˆ;->ⁱˊ:Z

    new-instance v0, Lᵔﹳ/ﹳٴ;

    invoke-direct {v0}, Lᵔﹳ/ﹳٴ;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/ـˆ;->ʽ:Lᵔﹳ/ﹳٴ;

    sget-object v0, Landroidx/lifecycle/ᵔʾ;->ᴵˊ:Landroidx/lifecycle/ᵔʾ;

    iput-object v0, p0, Landroidx/lifecycle/ـˆ;->ˈ:Landroidx/lifecycle/ᵔʾ;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/lifecycle/ـˆ;->ʼˎ:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroidx/lifecycle/ـˆ;->ˑﹳ:Ljava/lang/ref/WeakReference;

    new-instance p1, Lᵎˈ/ٴᵢ;

    invoke-direct {p1, v0}, Lᵎˈ/ٴᵢ;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/lifecycle/ـˆ;->ˆʾ:Lᵎˈ/ٴᵢ;

    return-void
.end method


# virtual methods
.method public final ʽ(Ljava/lang/String;)V
    .locals 2

    .prologue
    iget-boolean v0, p0, Landroidx/lifecycle/ـˆ;->ⁱˊ:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lʼᐧ/ⁱˊ;->ʾˋ()Lʼᐧ/ⁱˊ;

    move-result-object v0

    iget-object v0, v0, Lʼᐧ/ⁱˊ;->ˆʾ:Lʼᐧ/ˈ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const-string v0, "Method "

    const-string v1, " must be called on the main thread"

    invoke-static {v0, p1, v1}, Lˉˆ/ٴᴵ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public final ˈ(Landroidx/lifecycle/ˉʿ;)V
    .locals 1

    const-string v0, "handleLifecycleEvent"

    invoke-virtual {p0, v0}, Landroidx/lifecycle/ـˆ;->ʽ(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/lifecycle/ˉʿ;->ﹳٴ()Landroidx/lifecycle/ᵔʾ;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/ـˆ;->ˑﹳ(Landroidx/lifecycle/ᵔʾ;)V

    return-void
.end method

.method public final ˑﹳ(Landroidx/lifecycle/ᵔʾ;)V
    .locals 5

    .prologue
    iget-object v0, p0, Landroidx/lifecycle/ـˆ;->ˈ:Landroidx/lifecycle/ᵔʾ;

    if-ne v0, p1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Landroidx/lifecycle/ـˆ;->ˑﹳ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/ʽﹳ;

    iget-object v1, p0, Landroidx/lifecycle/ـˆ;->ˈ:Landroidx/lifecycle/ᵔʾ;

    sget-object v2, Landroidx/lifecycle/ᵔʾ;->ᴵˊ:Landroidx/lifecycle/ᵔʾ;

    sget-object v3, Landroidx/lifecycle/ᵔʾ;->ʾˋ:Landroidx/lifecycle/ᵔʾ;

    if-ne v1, v2, :cond_2

    if-eq p1, v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "State must be at least \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroidx/lifecycle/ᵔʾ;->ʽʽ:Landroidx/lifecycle/ᵔʾ;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\' to be moved to \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' in component "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    if-ne v1, v3, :cond_4

    if-ne v1, p1, :cond_3

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "State is \'"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\' and cannot be moved to `"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "` in component "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_1
    iput-object p1, p0, Landroidx/lifecycle/ـˆ;->ˈ:Landroidx/lifecycle/ᵔʾ;

    iget-boolean p1, p0, Landroidx/lifecycle/ـˆ;->ᵎﹶ:Z

    const/4 v0, 0x1

    if-nez p1, :cond_7

    iget p1, p0, Landroidx/lifecycle/ـˆ;->ﾞᴵ:I

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    iput-boolean v0, p0, Landroidx/lifecycle/ـˆ;->ᵎﹶ:Z

    invoke-virtual {p0}, Landroidx/lifecycle/ـˆ;->ᵎﹶ()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/lifecycle/ـˆ;->ᵎﹶ:Z

    iget-object p1, p0, Landroidx/lifecycle/ـˆ;->ˈ:Landroidx/lifecycle/ᵔʾ;

    if-ne p1, v3, :cond_6

    new-instance p1, Lᵔﹳ/ﹳٴ;

    invoke-direct {p1}, Lᵔﹳ/ﹳٴ;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/ـˆ;->ʽ:Lᵔﹳ/ﹳٴ;

    :cond_6
    :goto_2
    return-void

    :cond_7
    :goto_3
    iput-boolean v0, p0, Landroidx/lifecycle/ـˆ;->ᵔᵢ:Z

    return-void
.end method

.method public final ᵎﹶ()V
    .locals 11

    .prologue
    iget-object v0, p0, Landroidx/lifecycle/ـˆ;->ˑﹳ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/ʽﹳ;

    if-eqz v0, :cond_f

    :cond_0
    iget-object v1, p0, Landroidx/lifecycle/ـˆ;->ʽ:Lᵔﹳ/ﹳٴ;

    iget v2, v1, Lᵔﹳ/ﾞᴵ;->ˈٴ:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lᵔﹳ/ﾞᴵ;->ʾˋ:Lᵔﹳ/ʽ;

    iget-object v2, v2, Lᵔﹳ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Landroidx/lifecycle/ʻٴ;

    iget-object v2, v2, Landroidx/lifecycle/ʻٴ;->ﹳٴ:Landroidx/lifecycle/ᵔʾ;

    iget-object v1, v1, Lᵔﹳ/ﾞᴵ;->ᴵˊ:Lᵔﹳ/ʽ;

    iget-object v1, v1, Lᵔﹳ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Landroidx/lifecycle/ʻٴ;

    iget-object v1, v1, Landroidx/lifecycle/ʻٴ;->ﹳٴ:Landroidx/lifecycle/ᵔʾ;

    if-ne v2, v1, :cond_3

    iget-object v5, p0, Landroidx/lifecycle/ـˆ;->ˈ:Landroidx/lifecycle/ᵔʾ;

    if-ne v5, v1, :cond_3

    :goto_0
    iput-boolean v4, p0, Landroidx/lifecycle/ـˆ;->ᵔᵢ:Z

    iget-object v0, p0, Landroidx/lifecycle/ـˆ;->ˈ:Landroidx/lifecycle/ᵔʾ;

    iget-object v1, p0, Landroidx/lifecycle/ـˆ;->ˆʾ:Lᵎˈ/ٴᵢ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v0, :cond_2

    sget-object v0, Lʿᵔ/ⁱˊ;->ⁱˊ:Lʻᴵ/ﹳٴ;

    :cond_2
    invoke-virtual {v1, v3, v0}, Lᵎˈ/ٴᵢ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void

    :cond_3
    iput-boolean v4, p0, Landroidx/lifecycle/ـˆ;->ᵔᵢ:Z

    iget-object v1, p0, Landroidx/lifecycle/ـˆ;->ˈ:Landroidx/lifecycle/ᵔʾ;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    const/4 v2, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    iget-object v6, p0, Landroidx/lifecycle/ـˆ;->ʼˎ:Ljava/util/ArrayList;

    if-gez v1, :cond_9

    iget-object v1, p0, Landroidx/lifecycle/ـˆ;->ʽ:Lᵔﹳ/ﹳٴ;

    new-instance v7, Lᵔﹳ/ⁱˊ;

    iget-object v8, v1, Lᵔﹳ/ﾞᴵ;->ᴵˊ:Lᵔﹳ/ʽ;

    iget-object v9, v1, Lᵔﹳ/ﾞᴵ;->ʾˋ:Lᵔﹳ/ʽ;

    const/4 v10, 0x1

    invoke-direct {v7, v8, v9, v10}, Lᵔﹳ/ⁱˊ;-><init>(Lᵔﹳ/ʽ;Lᵔﹳ/ʽ;I)V

    iget-object v1, v1, Lᵔﹳ/ﾞᴵ;->ʽʽ:Ljava/util/WeakHashMap;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v7, v8}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {v7}, Lᵔﹳ/ⁱˊ;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Landroidx/lifecycle/ـˆ;->ᵔᵢ:Z

    if-nez v1, :cond_9

    invoke-virtual {v7}, Lᵔﹳ/ⁱˊ;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/lifecycle/ˏי;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/ʻٴ;

    :goto_1
    iget-object v9, v1, Landroidx/lifecycle/ʻٴ;->ﹳٴ:Landroidx/lifecycle/ᵔʾ;

    iget-object v10, p0, Landroidx/lifecycle/ـˆ;->ˈ:Landroidx/lifecycle/ᵔʾ;

    invoke-virtual {v9, v10}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v9

    if-lez v9, :cond_4

    iget-boolean v9, p0, Landroidx/lifecycle/ـˆ;->ᵔᵢ:Z

    if-nez v9, :cond_4

    iget-object v9, p0, Landroidx/lifecycle/ـˆ;->ʽ:Lᵔﹳ/ﹳٴ;

    iget-object v9, v9, Lᵔﹳ/ﹳٴ;->ᴵᵔ:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    sget-object v9, Landroidx/lifecycle/ˉʿ;->Companion:Landroidx/lifecycle/ٴﹶ;

    iget-object v10, v1, Landroidx/lifecycle/ʻٴ;->ﹳٴ:Landroidx/lifecycle/ᵔʾ;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    if-eq v9, v4, :cond_7

    if-eq v9, v2, :cond_6

    const/4 v10, 0x4

    if-eq v9, v10, :cond_5

    move-object v9, v3

    goto :goto_2

    :cond_5
    sget-object v9, Landroidx/lifecycle/ˉʿ;->ON_PAUSE:Landroidx/lifecycle/ˉʿ;

    goto :goto_2

    :cond_6
    sget-object v9, Landroidx/lifecycle/ˉʿ;->ON_STOP:Landroidx/lifecycle/ˉʿ;

    goto :goto_2

    :cond_7
    sget-object v9, Landroidx/lifecycle/ˉʿ;->ON_DESTROY:Landroidx/lifecycle/ˉʿ;

    :goto_2
    if-eqz v9, :cond_8

    invoke-virtual {v9}, Landroidx/lifecycle/ˉʿ;->ﹳٴ()Landroidx/lifecycle/ᵔʾ;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v0, v9}, Landroidx/lifecycle/ʻٴ;->ﹳٴ(Landroidx/lifecycle/ʽﹳ;Landroidx/lifecycle/ˉʿ;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v5

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "no event down from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Landroidx/lifecycle/ʻٴ;->ﹳٴ:Landroidx/lifecycle/ᵔʾ;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    iget-object v1, p0, Landroidx/lifecycle/ـˆ;->ʽ:Lᵔﹳ/ﹳٴ;

    iget-object v1, v1, Lᵔﹳ/ﾞᴵ;->ᴵˊ:Lᵔﹳ/ʽ;

    iget-boolean v7, p0, Landroidx/lifecycle/ـˆ;->ᵔᵢ:Z

    if-nez v7, :cond_0

    if-eqz v1, :cond_0

    iget-object v7, p0, Landroidx/lifecycle/ـˆ;->ˈ:Landroidx/lifecycle/ᵔʾ;

    iget-object v1, v1, Lᵔﹳ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Landroidx/lifecycle/ʻٴ;

    iget-object v1, v1, Landroidx/lifecycle/ʻٴ;->ﹳٴ:Landroidx/lifecycle/ᵔʾ;

    invoke-virtual {v7, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Landroidx/lifecycle/ـˆ;->ʽ:Lᵔﹳ/ﹳٴ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lᵔﹳ/ˈ;

    invoke-direct {v7, v1}, Lᵔﹳ/ˈ;-><init>(Lᵔﹳ/ﾞᴵ;)V

    iget-object v1, v1, Lᵔﹳ/ﾞᴵ;->ʽʽ:Ljava/util/WeakHashMap;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v7, v8}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    invoke-virtual {v7}, Lᵔﹳ/ˈ;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroidx/lifecycle/ـˆ;->ᵔᵢ:Z

    if-nez v1, :cond_0

    invoke-virtual {v7}, Lᵔﹳ/ˈ;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/lifecycle/ˏי;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/ʻٴ;

    :goto_3
    iget-object v9, v1, Landroidx/lifecycle/ʻٴ;->ﹳٴ:Landroidx/lifecycle/ᵔʾ;

    iget-object v10, p0, Landroidx/lifecycle/ـˆ;->ˈ:Landroidx/lifecycle/ᵔʾ;

    invoke-virtual {v9, v10}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v9

    if-gez v9, :cond_a

    iget-boolean v9, p0, Landroidx/lifecycle/ـˆ;->ᵔᵢ:Z

    if-nez v9, :cond_a

    iget-object v9, p0, Landroidx/lifecycle/ـˆ;->ʽ:Lᵔﹳ/ﹳٴ;

    iget-object v9, v9, Lᵔﹳ/ﹳٴ;->ᴵᵔ:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, v1, Landroidx/lifecycle/ʻٴ;->ﹳٴ:Landroidx/lifecycle/ᵔʾ;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v9, Landroidx/lifecycle/ˉʿ;->Companion:Landroidx/lifecycle/ٴﹶ;

    iget-object v10, v1, Landroidx/lifecycle/ʻٴ;->ﹳٴ:Landroidx/lifecycle/ᵔʾ;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    if-eq v9, v5, :cond_d

    if-eq v9, v4, :cond_c

    if-eq v9, v2, :cond_b

    move-object v9, v3

    goto :goto_4

    :cond_b
    sget-object v9, Landroidx/lifecycle/ˉʿ;->ON_RESUME:Landroidx/lifecycle/ˉʿ;

    goto :goto_4

    :cond_c
    sget-object v9, Landroidx/lifecycle/ˉʿ;->ON_START:Landroidx/lifecycle/ˉʿ;

    goto :goto_4

    :cond_d
    sget-object v9, Landroidx/lifecycle/ˉʿ;->ON_CREATE:Landroidx/lifecycle/ˉʿ;

    :goto_4
    if-eqz v9, :cond_e

    invoke-virtual {v1, v0, v9}, Landroidx/lifecycle/ʻٴ;->ﹳٴ(Landroidx/lifecycle/ʽﹳ;Landroidx/lifecycle/ˉʿ;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v5

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "no event up from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Landroidx/lifecycle/ʻٴ;->ﹳٴ:Landroidx/lifecycle/ᵔʾ;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "LifecycleOwner of this LifecycleRegistry is already garbage collected. It is too late to change lifecycle state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ⁱˊ(Landroidx/lifecycle/ˏי;)Landroidx/lifecycle/ᵔʾ;
    .locals 3

    .prologue
    iget-object v0, p0, Landroidx/lifecycle/ـˆ;->ʽ:Lᵔﹳ/ﹳٴ;

    iget-object v0, v0, Lᵔﹳ/ﹳٴ;->ᴵᵔ:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lᵔﹳ/ʽ;

    iget-object p1, p1, Lᵔﹳ/ʽ;->ˈٴ:Lᵔﹳ/ʽ;

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_1

    iget-object p1, p1, Lᵔﹳ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Landroidx/lifecycle/ʻٴ;

    iget-object p1, p1, Landroidx/lifecycle/ʻٴ;->ﹳٴ:Landroidx/lifecycle/ᵔʾ;

    goto :goto_1

    :cond_1
    move-object p1, v2

    :goto_1
    iget-object v0, p0, Landroidx/lifecycle/ـˆ;->ʼˎ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lᐧـ/ˈ;->ᵔʾ(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/lifecycle/ᵔʾ;

    :cond_2
    iget-object v0, p0, Landroidx/lifecycle/ـˆ;->ˈ:Landroidx/lifecycle/ᵔʾ;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_3

    goto :goto_2

    :cond_3
    move-object p1, v0

    :goto_2
    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_4

    return-object v2

    :cond_4
    return-object p1
.end method

.method public final ﹳٴ(Landroidx/lifecycle/ˏי;)V
    .locals 11

    .prologue
    const-string v0, "addObserver"

    invoke-virtual {p0, v0}, Landroidx/lifecycle/ـˆ;->ʽ(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/lifecycle/ـˆ;->ˈ:Landroidx/lifecycle/ᵔʾ;

    sget-object v1, Landroidx/lifecycle/ᵔʾ;->ʾˋ:Landroidx/lifecycle/ᵔʾ;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/lifecycle/ᵔʾ;->ᴵˊ:Landroidx/lifecycle/ᵔʾ;

    :goto_0
    new-instance v0, Landroidx/lifecycle/ʻٴ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v2, Landroidx/lifecycle/ʼʼ;->ﹳٴ:Ljava/util/HashMap;

    instance-of v2, p1, Landroidx/lifecycle/יـ;

    instance-of v3, p1, Lʿˋ/ʽﹳ;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    new-instance v2, Landroidx/lifecycle/ﾞᴵ;

    move-object v3, p1

    check-cast v3, Lʿˋ/ʽﹳ;

    move-object v8, p1

    check-cast v8, Landroidx/lifecycle/יـ;

    invoke-direct {v2, v3, v6, v8}, Landroidx/lifecycle/ﾞᴵ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_2

    :cond_1
    if-eqz v3, :cond_2

    new-instance v2, Landroidx/lifecycle/ﾞᴵ;

    move-object v3, p1

    check-cast v3, Lʿˋ/ʽﹳ;

    invoke-direct {v2, v3, v6, v5}, Landroidx/lifecycle/ﾞᴵ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_3

    move-object v2, p1

    check-cast v2, Landroidx/lifecycle/יـ;

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Landroidx/lifecycle/ʼʼ;->ⁱˊ(Ljava/lang/Class;)I

    move-result v3

    if-ne v3, v4, :cond_6

    sget-object v3, Landroidx/lifecycle/ʼʼ;->ⁱˊ:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v7, :cond_4

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Constructor;

    invoke-static {v2, p1}, Landroidx/lifecycle/ʼʼ;->ﹳٴ(Ljava/lang/reflect/Constructor;Landroidx/lifecycle/ˏי;)V

    new-instance v2, Landroidx/lifecycle/ʿᵢ;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    goto :goto_2

    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v8, v3, [Landroidx/lifecycle/ᵔᵢ;

    move v9, v6

    :goto_1
    if-ge v9, v3, :cond_5

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/reflect/Constructor;

    invoke-static {v10, p1}, Landroidx/lifecycle/ʼʼ;->ﹳٴ(Ljava/lang/reflect/Constructor;Landroidx/lifecycle/ˏי;)V

    aput-object v5, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_5
    new-instance v2, Lᵎ/ⁱˊ;

    invoke-direct {v2, v7, v8}, Lᵎ/ⁱˊ;-><init>(ILjava/lang/Object;)V

    goto :goto_2

    :cond_6
    new-instance v2, Landroidx/lifecycle/ﾞᴵ;

    invoke-direct {v2, p1}, Landroidx/lifecycle/ﾞᴵ;-><init>(Landroidx/lifecycle/ˏי;)V

    :goto_2
    iput-object v2, v0, Landroidx/lifecycle/ʻٴ;->ⁱˊ:Landroidx/lifecycle/יـ;

    iput-object v1, v0, Landroidx/lifecycle/ʻٴ;->ﹳٴ:Landroidx/lifecycle/ᵔʾ;

    iget-object v1, p0, Landroidx/lifecycle/ـˆ;->ʽ:Lᵔﹳ/ﹳٴ;

    invoke-virtual {v1, p1}, Lᵔﹳ/ﹳٴ;->ﹳٴ(Ljava/lang/Object;)Lᵔﹳ/ʽ;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v1, v2, Lᵔﹳ/ʽ;->ᴵˊ:Ljava/lang/Object;

    goto :goto_4

    :cond_7
    iget-object v2, v1, Lᵔﹳ/ﹳٴ;->ᴵᵔ:Ljava/util/HashMap;

    new-instance v3, Lᵔﹳ/ʽ;

    invoke-direct {v3, p1, v0}, Lᵔﹳ/ʽ;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget v8, v1, Lᵔﹳ/ﾞᴵ;->ˈٴ:I

    add-int/2addr v8, v7

    iput v8, v1, Lᵔﹳ/ﾞᴵ;->ˈٴ:I

    iget-object v8, v1, Lᵔﹳ/ﾞᴵ;->ᴵˊ:Lᵔﹳ/ʽ;

    if-nez v8, :cond_8

    iput-object v3, v1, Lᵔﹳ/ﾞᴵ;->ʾˋ:Lᵔﹳ/ʽ;

    iput-object v3, v1, Lᵔﹳ/ﾞᴵ;->ᴵˊ:Lᵔﹳ/ʽ;

    goto :goto_3

    :cond_8
    iput-object v3, v8, Lᵔﹳ/ʽ;->ʽʽ:Lᵔﹳ/ʽ;

    iput-object v8, v3, Lᵔﹳ/ʽ;->ˈٴ:Lᵔﹳ/ʽ;

    iput-object v3, v1, Lᵔﹳ/ﾞᴵ;->ᴵˊ:Lᵔﹳ/ʽ;

    :goto_3
    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v5

    :goto_4
    check-cast v1, Landroidx/lifecycle/ʻٴ;

    if-eqz v1, :cond_9

    goto :goto_5

    :cond_9
    iget-object v1, p0, Landroidx/lifecycle/ـˆ;->ˑﹳ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/ʽﹳ;

    if-nez v1, :cond_a

    :goto_5
    return-void

    :cond_a
    iget v2, p0, Landroidx/lifecycle/ـˆ;->ﾞᴵ:I

    if-nez v2, :cond_b

    iget-boolean v2, p0, Landroidx/lifecycle/ـˆ;->ᵎﹶ:Z

    if-eqz v2, :cond_c

    :cond_b
    move v6, v7

    :cond_c
    invoke-virtual {p0, p1}, Landroidx/lifecycle/ـˆ;->ⁱˊ(Landroidx/lifecycle/ˏי;)Landroidx/lifecycle/ᵔʾ;

    move-result-object v2

    iget v3, p0, Landroidx/lifecycle/ـˆ;->ﾞᴵ:I

    add-int/2addr v3, v7

    iput v3, p0, Landroidx/lifecycle/ـˆ;->ﾞᴵ:I

    :goto_6
    iget-object v3, v0, Landroidx/lifecycle/ʻٴ;->ﹳٴ:Landroidx/lifecycle/ᵔʾ;

    invoke-virtual {v3, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-gez v2, :cond_11

    iget-object v2, p0, Landroidx/lifecycle/ـˆ;->ʽ:Lᵔﹳ/ﹳٴ;

    iget-object v2, v2, Lᵔﹳ/ﹳٴ;->ᴵᵔ:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, v0, Landroidx/lifecycle/ʻٴ;->ﹳٴ:Landroidx/lifecycle/ᵔʾ;

    iget-object v3, p0, Landroidx/lifecycle/ـˆ;->ʼˎ:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Landroidx/lifecycle/ˉʿ;->Companion:Landroidx/lifecycle/ٴﹶ;

    iget-object v8, v0, Landroidx/lifecycle/ʻٴ;->ﹳٴ:Landroidx/lifecycle/ᵔʾ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eq v2, v7, :cond_f

    if-eq v2, v4, :cond_e

    const/4 v8, 0x3

    if-eq v2, v8, :cond_d

    move-object v2, v5

    goto :goto_7

    :cond_d
    sget-object v2, Landroidx/lifecycle/ˉʿ;->ON_RESUME:Landroidx/lifecycle/ˉʿ;

    goto :goto_7

    :cond_e
    sget-object v2, Landroidx/lifecycle/ˉʿ;->ON_START:Landroidx/lifecycle/ˉʿ;

    goto :goto_7

    :cond_f
    sget-object v2, Landroidx/lifecycle/ˉʿ;->ON_CREATE:Landroidx/lifecycle/ˉʿ;

    :goto_7
    if-eqz v2, :cond_10

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/ʻٴ;->ﹳٴ(Landroidx/lifecycle/ʽﹳ;Landroidx/lifecycle/ˉʿ;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v7

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/ـˆ;->ⁱˊ(Landroidx/lifecycle/ˏי;)Landroidx/lifecycle/ᵔʾ;

    move-result-object v2

    goto :goto_6

    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no event up from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroidx/lifecycle/ʻٴ;->ﹳٴ:Landroidx/lifecycle/ᵔʾ;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    if-nez v6, :cond_12

    invoke-virtual {p0}, Landroidx/lifecycle/ـˆ;->ᵎﹶ()V

    :cond_12
    iget p1, p0, Landroidx/lifecycle/ـˆ;->ﾞᴵ:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/lifecycle/ـˆ;->ﾞᴵ:I

    return-void
.end method

.method public final ﾞᴵ(Landroidx/lifecycle/ˏי;)V
    .locals 1

    const-string v0, "removeObserver"

    invoke-virtual {p0, v0}, Landroidx/lifecycle/ـˆ;->ʽ(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/lifecycle/ـˆ;->ʽ:Lᵔﹳ/ﹳٴ;

    invoke-virtual {v0, p1}, Lᵔﹳ/ﹳٴ;->ⁱˊ(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
