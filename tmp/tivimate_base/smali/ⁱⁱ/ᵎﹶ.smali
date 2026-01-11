.class public final Lⁱⁱ/ᵎﹶ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lⁱⁱ/ʽ;
.implements Lʾˎ/ˈ;


# static fields
.field public static final ᴵˊ:Z


# instance fields
.field public ʻٴ:Landroid/graphics/drawable/Drawable;

.field public ʼʼ:Z

.field public final ʼˎ:I

.field public ʼᐧ:Lʿʾ/ᵢˏ;

.field public final ʽ:Ljava/lang/Object;

.field public ʽﹳ:Landroid/graphics/drawable/Drawable;

.field public ʾˋ:I

.field public ʾᵎ:I

.field public final ˆʾ:I

.field public final ˈ:Lⁱⁱ/ˈ;

.field public final ˉʿ:Ljava/util/List;

.field public final ˉˆ:Lʿʿ/ﹳٴ;

.field public ˏי:Landroid/graphics/drawable/Drawable;

.field public final ˑﹳ:Lcom/bumptech/glide/ˑﹳ;

.field public volatile יـ:Lʿʾ/ˉʿ;

.field public ـˆ:I

.field public final ٴﹶ:Lcom/bumptech/glide/ᵎﹶ;

.field public final ᵎﹶ:Ljava/lang/Class;

.field public final ᵔʾ:Lˈʼ/ˈ;

.field public final ᵔᵢ:Lⁱⁱ/ﹳٴ;

.field public ᵔﹳ:Lcom/parse/ٴʼ;

.field public final ᵢˏ:Ljava/lang/RuntimeException;

.field public final ⁱˊ:Lˈﹳ/ˑﹳ;

.field public final ﹳٴ:Ljava/lang/String;

.field public ﹳᐧ:J

.field public final ﾞʻ:Lʾˎ/ˑﹳ;

.field public final ﾞᴵ:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "GlideRequest"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lⁱⁱ/ᵎﹶ;->ᴵˊ:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/ˑﹳ;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lⁱⁱ/ﹳٴ;IILcom/bumptech/glide/ᵎﹶ;Lʾˎ/ˑﹳ;Ljava/util/ArrayList;Lⁱⁱ/ˈ;Lʿʾ/ˉʿ;Lˈʼ/ˈ;)V
    .locals 1

    .prologue
    sget-object p1, Lʿٴ/ﾞᴵ;->ﹳٴ:Lʿʿ/ﹳٴ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lⁱⁱ/ᵎﹶ;->ᴵˊ:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lⁱⁱ/ᵎﹶ;->ﹳٴ:Ljava/lang/String;

    new-instance v0, Lˈﹳ/ˑﹳ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lⁱⁱ/ᵎﹶ;->ⁱˊ:Lˈﹳ/ˑﹳ;

    iput-object p3, p0, Lⁱⁱ/ᵎﹶ;->ʽ:Ljava/lang/Object;

    iput-object p2, p0, Lⁱⁱ/ᵎﹶ;->ˑﹳ:Lcom/bumptech/glide/ˑﹳ;

    iput-object p4, p0, Lⁱⁱ/ᵎﹶ;->ﾞᴵ:Ljava/lang/Object;

    iput-object p5, p0, Lⁱⁱ/ᵎﹶ;->ᵎﹶ:Ljava/lang/Class;

    iput-object p6, p0, Lⁱⁱ/ᵎﹶ;->ᵔᵢ:Lⁱⁱ/ﹳٴ;

    iput p7, p0, Lⁱⁱ/ᵎﹶ;->ʼˎ:I

    iput p8, p0, Lⁱⁱ/ᵎﹶ;->ˆʾ:I

    iput-object p9, p0, Lⁱⁱ/ᵎﹶ;->ٴﹶ:Lcom/bumptech/glide/ᵎﹶ;

    iput-object p10, p0, Lⁱⁱ/ᵎﹶ;->ﾞʻ:Lʾˎ/ˑﹳ;

    iput-object p11, p0, Lⁱⁱ/ᵎﹶ;->ˉʿ:Ljava/util/List;

    iput-object p12, p0, Lⁱⁱ/ᵎﹶ;->ˈ:Lⁱⁱ/ˈ;

    iput-object p13, p0, Lⁱⁱ/ᵎﹶ;->יـ:Lʿʾ/ˉʿ;

    iput-object p14, p0, Lⁱⁱ/ᵎﹶ;->ᵔʾ:Lˈʼ/ˈ;

    iput-object p1, p0, Lⁱⁱ/ᵎﹶ;->ˉˆ:Lʿʿ/ﹳٴ;

    const/4 p1, 0x1

    iput p1, p0, Lⁱⁱ/ᵎﹶ;->ʾˋ:I

    iget-object p1, p0, Lⁱⁱ/ᵎﹶ;->ᵢˏ:Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    iget-object p1, p2, Lcom/bumptech/glide/ˑﹳ;->ᵔᵢ:Lﹳי/ʽ;

    iget-object p1, p1, Lﹳי/ʽ;->ʾˋ:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    const-class p2, Lcom/bumptech/glide/ˈ;

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Glide request origin trace"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lⁱⁱ/ᵎﹶ;->ᵢˏ:Ljava/lang/RuntimeException;

    :cond_1
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 5

    .prologue
    iget-object v0, p0, Lⁱⁱ/ᵎﹶ;->ʽ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lⁱⁱ/ᵎﹶ;->ʼʼ:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lⁱⁱ/ᵎﹶ;->ⁱˊ:Lˈﹳ/ˑﹳ;

    invoke-virtual {v1}, Lˈﹳ/ˑﹳ;->ﹳٴ()V

    iget v1, p0, Lⁱⁱ/ᵎﹶ;->ʾˋ:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lⁱⁱ/ᵎﹶ;->ⁱˊ()V

    iget-object v1, p0, Lⁱⁱ/ᵎﹶ;->ʼᐧ:Lʿʾ/ᵢˏ;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iput-object v3, p0, Lⁱⁱ/ᵎﹶ;->ʼᐧ:Lʿʾ/ᵢˏ;

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    iget-object v3, p0, Lⁱⁱ/ᵎﹶ;->ˈ:Lⁱⁱ/ˈ;

    if-eqz v3, :cond_2

    invoke-interface {v3, p0}, Lⁱⁱ/ˈ;->ٴﹶ(Lⁱⁱ/ʽ;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, p0, Lⁱⁱ/ᵎﹶ;->ﾞʻ:Lʾˎ/ˑﹳ;

    invoke-virtual {p0}, Lⁱⁱ/ᵎﹶ;->ʽ()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v3, v4}, Lʾˎ/ˑﹳ;->ʼˎ(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iput v2, p0, Lⁱⁱ/ᵎﹶ;->ʾˋ:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    iget-object v0, p0, Lⁱⁱ/ᵎﹶ;->יـ:Lʿʾ/ˉʿ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lʿʾ/ˉʿ;->ᵎﹶ(Lʿʾ/ᵢˏ;)V

    :cond_4
    return-void

    :cond_5
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "You can\'t start or clear loads in RequestListener or Target callbacks. If you\'re trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final isRunning()Z
    .locals 3

    .prologue
    iget-object v0, p0, Lⁱⁱ/ᵎﹶ;->ʽ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lⁱⁱ/ᵎﹶ;->ʾˋ:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    iget-object v0, p0, Lⁱⁱ/ᵎﹶ;->ʽ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lⁱⁱ/ᵎﹶ;->ﾞᴵ:Ljava/lang/Object;

    iget-object v2, p0, Lⁱⁱ/ᵎﹶ;->ᵎﹶ:Ljava/lang/Class;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "[model="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transcodeClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final ʼˎ(Ljava/lang/String;)V
    .locals 1

    const-string v0, " this: "

    invoke-static {p1, v0}, Lʻٴ/ᵎﹶ;->ʽ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lⁱⁱ/ᵎﹶ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GlideRequest"

    nop

    return-void
.end method

.method public final ʽ()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    iget-object v0, p0, Lⁱⁱ/ᵎﹶ;->ʽﹳ:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lⁱⁱ/ᵎﹶ;->ᵔᵢ:Lⁱⁱ/ﹳٴ;

    iget-object v0, v0, Lⁱⁱ/ﹳٴ;->ᴵᵔ:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lⁱⁱ/ᵎﹶ;->ʽﹳ:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lⁱⁱ/ᵎﹶ;->ʽﹳ:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final ˆʾ(Lcom/bumptech/glide/load/engine/GlideException;I)V
    .locals 6

    .prologue
    const-string v0, "Load failed for ["

    iget-object v1, p0, Lⁱⁱ/ᵎﹶ;->ⁱˊ:Lˈﹳ/ˑﹳ;

    invoke-virtual {v1}, Lˈﹳ/ˑﹳ;->ﹳٴ()V

    iget-object v1, p0, Lⁱⁱ/ᵎﹶ;->ʽ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lⁱⁱ/ᵎﹶ;->ˑﹳ:Lcom/bumptech/glide/ˑﹳ;

    iget v2, v2, Lcom/bumptech/glide/ˑﹳ;->ʼˎ:I

    if-gt v2, p2, :cond_0

    const-string p2, "Glide"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lⁱⁱ/ᵎﹶ;->ﾞᴵ:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "] with dimensions ["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lⁱⁱ/ᵎﹶ;->ـˆ:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lⁱⁱ/ᵎﹶ;->ʾᵎ:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    const/4 p2, 0x4

    if-gt v2, p2, :cond_0

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/GlideException;->ˈ()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_0
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lⁱⁱ/ᵎﹶ;->ᵔﹳ:Lcom/parse/ٴʼ;

    const/4 p2, 0x5

    iput p2, p0, Lⁱⁱ/ᵎﹶ;->ʾˋ:I

    iget-object p2, p0, Lⁱⁱ/ᵎﹶ;->ˈ:Lⁱⁱ/ˈ;

    if-eqz p2, :cond_1

    invoke-interface {p2, p0}, Lⁱⁱ/ˈ;->ˆʾ(Lⁱⁱ/ʽ;)V

    :cond_1
    const/4 p2, 0x1

    iput-boolean p2, p0, Lⁱⁱ/ᵎﹶ;->ʼʼ:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :try_start_1
    iget-object v2, p0, Lⁱⁱ/ᵎﹶ;->ˉʿ:Ljava/util/List;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lⁱⁱ/ˑﹳ;

    iget-object v5, p0, Lⁱⁱ/ᵎﹶ;->ˈ:Lⁱⁱ/ˈ;

    if-eqz v5, :cond_2

    invoke-interface {v5}, Lⁱⁱ/ˈ;->getRoot()Lⁱⁱ/ˈ;

    move-result-object v5

    invoke-interface {v5}, Lⁱⁱ/ˈ;->ﹳٴ()Z

    move-result v5

    :cond_2
    invoke-interface {v4}, Lⁱⁱ/ˑﹳ;->ﹳٴ()Z

    move-result v4

    or-int/2addr v3, v4

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :cond_3
    move v3, v0

    :cond_4
    if-nez v3, :cond_d

    iget-object v2, p0, Lⁱⁱ/ᵎﹶ;->ˈ:Lⁱⁱ/ˈ;

    if-eqz v2, :cond_6

    invoke-interface {v2, p0}, Lⁱⁱ/ˈ;->ʽ(Lⁱⁱ/ʽ;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    move p2, v0

    :cond_6
    :goto_2
    if-nez p2, :cond_7

    goto :goto_3

    :cond_7
    iget-object p2, p0, Lⁱⁱ/ᵎﹶ;->ﾞᴵ:Ljava/lang/Object;

    if-nez p2, :cond_9

    iget-object p2, p0, Lⁱⁱ/ᵎﹶ;->ʻٴ:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_8

    iget-object p2, p0, Lⁱⁱ/ᵎﹶ;->ᵔᵢ:Lⁱⁱ/ﹳٴ;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lⁱⁱ/ᵎﹶ;->ʻٴ:Landroid/graphics/drawable/Drawable;

    :cond_8
    iget-object p1, p0, Lⁱⁱ/ᵎﹶ;->ʻٴ:Landroid/graphics/drawable/Drawable;

    :cond_9
    if-nez p1, :cond_b

    iget-object p1, p0, Lⁱⁱ/ᵎﹶ;->ˏי:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_a

    iget-object p1, p0, Lⁱⁱ/ᵎﹶ;->ᵔᵢ:Lⁱⁱ/ﹳٴ;

    iget-object p1, p1, Lⁱⁱ/ﹳٴ;->ˈٴ:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lⁱⁱ/ᵎﹶ;->ˏי:Landroid/graphics/drawable/Drawable;

    :cond_a
    iget-object p1, p0, Lⁱⁱ/ᵎﹶ;->ˏי:Landroid/graphics/drawable/Drawable;

    :cond_b
    if-nez p1, :cond_c

    invoke-virtual {p0}, Lⁱⁱ/ᵎﹶ;->ʽ()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_c
    iget-object p2, p0, Lⁱⁱ/ᵎﹶ;->ﾞʻ:Lʾˎ/ˑﹳ;

    invoke-interface {p2, p1}, Lʾˎ/ˑﹳ;->ⁱˊ(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_d
    :goto_3
    :try_start_2
    iput-boolean v0, p0, Lⁱⁱ/ᵎﹶ;->ʼʼ:Z

    monitor-exit v1

    return-void

    :goto_4
    iput-boolean v0, p0, Lⁱⁱ/ᵎﹶ;->ʼʼ:Z

    throw p1

    :goto_5
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final ˈ()V
    .locals 2

    .prologue
    iget-object v0, p0, Lⁱⁱ/ᵎﹶ;->ʽ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lⁱⁱ/ᵎﹶ;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lⁱⁱ/ᵎﹶ;->clear()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final ˉʿ(II)V
    .locals 22

    .prologue
    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    const-string v3, "finished onSizeReady in "

    const-string v4, "finished setup for calling load in "

    const-string v5, "Got onSizeReady in "

    iget-object v6, v1, Lⁱⁱ/ᵎﹶ;->ⁱˊ:Lˈﹳ/ˑﹳ;

    invoke-virtual {v6}, Lˈﹳ/ˑﹳ;->ﹳٴ()V

    iget-object v6, v1, Lⁱⁱ/ᵎﹶ;->ʽ:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    sget-boolean v20, Lⁱⁱ/ᵎﹶ;->ᴵˊ:Z

    if-eqz v20, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, v1, Lⁱⁱ/ᵎﹶ;->ﹳᐧ:J

    invoke-static {v8, v9}, Lʿٴ/ᵔᵢ;->ﹳٴ(J)D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lⁱⁱ/ᵎﹶ;->ʼˎ(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v1

    move-object v1, v6

    goto/16 :goto_4

    :cond_0
    :goto_0
    iget v5, v1, Lⁱⁱ/ᵎﹶ;->ʾˋ:I

    const/4 v7, 0x3

    if-eq v5, v7, :cond_1

    monitor-exit v6

    return-void

    :cond_1
    const/4 v5, 0x2

    iput v5, v1, Lⁱⁱ/ᵎﹶ;->ʾˋ:I

    iget-object v7, v1, Lⁱⁱ/ᵎﹶ;->ᵔᵢ:Lⁱⁱ/ﹳٴ;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v7, -0x80000000

    const/high16 v8, 0x3f800000    # 1.0f

    if-ne v0, v7, :cond_2

    goto :goto_1

    :cond_2
    int-to-float v0, v0

    mul-float/2addr v0, v8

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    :goto_1
    iput v0, v1, Lⁱⁱ/ᵎﹶ;->ـˆ:I

    if-ne v2, v7, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    int-to-float v0, v2

    mul-float/2addr v8, v0

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v0

    :goto_2
    iput v0, v1, Lⁱⁱ/ᵎﹶ;->ʾᵎ:I

    if-eqz v20, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v7, v1, Lⁱⁱ/ᵎﹶ;->ﹳᐧ:J

    invoke-static {v7, v8}, Lʿٴ/ᵔᵢ;->ﹳٴ(J)D

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lⁱⁱ/ᵎﹶ;->ʼˎ(Ljava/lang/String;)V

    :cond_4
    iget-object v2, v1, Lⁱⁱ/ᵎﹶ;->יـ:Lʿʾ/ˉʿ;

    move-object v0, v3

    iget-object v3, v1, Lⁱⁱ/ᵎﹶ;->ˑﹳ:Lcom/bumptech/glide/ˑﹳ;

    iget-object v4, v1, Lⁱⁱ/ᵎﹶ;->ﾞᴵ:Ljava/lang/Object;

    iget-object v7, v1, Lⁱⁱ/ᵎﹶ;->ᵔᵢ:Lⁱⁱ/ﹳٴ;

    move v8, v5

    iget-object v5, v7, Lⁱⁱ/ﹳٴ;->ᵎⁱ:Lʼᵔ/ˑﹳ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v9, v6

    :try_start_1
    iget v6, v1, Lⁱⁱ/ᵎﹶ;->ـˆ:I

    iget v10, v1, Lⁱⁱ/ᵎﹶ;->ʾᵎ:I

    move v11, v8

    iget-object v8, v7, Lⁱⁱ/ﹳٴ;->ˆﾞ:Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    move-object v12, v9

    :try_start_2
    iget-object v9, v1, Lⁱⁱ/ᵎﹶ;->ᵎﹶ:Ljava/lang/Class;

    move v13, v10

    iget-object v10, v1, Lⁱⁱ/ᵎﹶ;->ٴﹶ:Lcom/bumptech/glide/ᵎﹶ;

    move v14, v11

    iget-object v11, v7, Lⁱⁱ/ﹳٴ;->ᴵˊ:Lʿʾ/ﾞʻ;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move-object v15, v12

    :try_start_3
    iget-object v12, v7, Lⁱⁱ/ﹳٴ;->ᵔי:Lʿٴ/ʽ;

    move/from16 v16, v13

    iget-boolean v13, v7, Lⁱⁱ/ﹳٴ;->ٴʼ:Z

    move/from16 v17, v14

    iget-boolean v14, v7, Lⁱⁱ/ﹳٴ;->ˑٴ:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-object/from16 v18, v15

    :try_start_4
    iget-object v15, v7, Lⁱⁱ/ﹳٴ;->ᵎˊ:Lʼᵔ/ᵔᵢ;

    move-object/from16 p1, v0

    iget-boolean v0, v7, Lⁱⁱ/ﹳٴ;->ˊʻ:Z

    iget-boolean v7, v7, Lⁱⁱ/ﹳٴ;->ˋᵔ:Z

    move/from16 v19, v0

    iget-object v0, v1, Lⁱⁱ/ᵎﹶ;->ˉˆ:Lʿʿ/ﹳٴ;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move/from16 v21, v19

    move-object/from16 v19, v0

    move/from16 v0, v17

    move/from16 v17, v7

    move/from16 v7, v16

    move/from16 v16, v21

    move-object/from16 v21, v18

    move-object/from16 v18, v1

    move-object/from16 v1, v21

    :try_start_5
    invoke-virtual/range {v2 .. v19}, Lʿʾ/ˉʿ;->ﹳٴ(Lcom/bumptech/glide/ˑﹳ;Ljava/lang/Object;Lʼᵔ/ˑﹳ;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/ᵎﹶ;Lʿʾ/ﾞʻ;Lʿٴ/ʽ;ZZLʼᵔ/ᵔᵢ;ZZLⁱⁱ/ᵎﹶ;Lʿʿ/ﹳٴ;)Lcom/parse/ٴʼ;

    move-result-object v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v3, v18

    :try_start_6
    iput-object v2, v3, Lⁱⁱ/ᵎﹶ;->ᵔﹳ:Lcom/parse/ٴʼ;

    iget v2, v3, Lⁱⁱ/ᵎﹶ;->ʾˋ:I

    if-eq v2, v0, :cond_5

    const/4 v0, 0x0

    iput-object v0, v3, Lⁱⁱ/ᵎﹶ;->ᵔﹳ:Lcom/parse/ٴʼ;

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_5
    :goto_3
    if-eqz v20, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v2, p1

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v3, Lⁱⁱ/ᵎﹶ;->ﹳᐧ:J

    invoke-static {v4, v5}, Lʿٴ/ᵔᵢ;->ﹳٴ(J)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lⁱⁱ/ᵎﹶ;->ʼˎ(Ljava/lang/String;)V

    :cond_6
    monitor-exit v1

    return-void

    :catchall_2
    move-exception v0

    move-object/from16 v3, v18

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v3, v1

    move-object/from16 v1, v18

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object v3, v1

    move-object v1, v15

    goto :goto_4

    :catchall_5
    move-exception v0

    move-object v3, v1

    move-object v1, v12

    goto :goto_4

    :catchall_6
    move-exception v0

    move-object v3, v1

    move-object v1, v9

    :goto_4
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0
.end method

.method public final ˑﹳ()Z
    .locals 3

    .prologue
    iget-object v0, p0, Lⁱⁱ/ᵎﹶ;->ʽ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lⁱⁱ/ᵎﹶ;->ʾˋ:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final ٴﹶ(Lʿʾ/ᵢˏ;IZ)V
    .locals 6

    .prologue
    const-string p3, "Expected to receive an object of "

    const-string v0, "Expected to receive a Resource<R> with an object of "

    iget-object v1, p0, Lⁱⁱ/ᵎﹶ;->ⁱˊ:Lˈﹳ/ˑﹳ;

    invoke-virtual {v1}, Lˈﹳ/ˑﹳ;->ﹳٴ()V

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lⁱⁱ/ᵎﹶ;->ʽ:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iput-object v1, p0, Lⁱⁱ/ᵎﹶ;->ᵔﹳ:Lcom/parse/ٴʼ;

    const/4 v3, 0x5

    if-nez p1, :cond_0

    new-instance p1, Lcom/bumptech/glide/load/engine/GlideException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lⁱⁱ/ᵎﹶ;->ᵎﹶ:Ljava/lang/Class;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " inside, but instead got null."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v3}, Lⁱⁱ/ᵎﹶ;->ˆʾ(Lcom/bumptech/glide/load/engine/GlideException;I)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_0
    invoke-interface {p1}, Lʿʾ/ᵢˏ;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v4, p0, Lⁱⁱ/ᵎﹶ;->ᵎﹶ:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    iget-object p3, p0, Lⁱⁱ/ᵎﹶ;->ˈ:Lⁱⁱ/ˈ;

    if-eqz p3, :cond_3

    invoke-interface {p3, p0}, Lⁱⁱ/ˈ;->ʼˎ(Lⁱⁱ/ʽ;)Z

    move-result p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    :try_start_2
    iput-object v1, p0, Lⁱⁱ/ᵎﹶ;->ʼᐧ:Lʿʾ/ᵢˏ;

    const/4 p2, 0x4

    iput p2, p0, Lⁱⁱ/ᵎﹶ;->ʾˋ:I

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    iget-object p2, p0, Lⁱⁱ/ᵎﹶ;->יـ:Lʿʾ/ˉʿ;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lʿʾ/ˉʿ;->ᵎﹶ(Lʿʾ/ᵢˏ;)V

    return-void

    :catchall_1
    move-exception p2

    move-object v1, p1

    move-object p1, p2

    goto :goto_5

    :cond_3
    :goto_1
    :try_start_3
    invoke-virtual {p0, p1, v0, p2}, Lⁱⁱ/ᵎﹶ;->ﾞʻ(Lʿʾ/ᵢˏ;Ljava/lang/Object;I)V

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :cond_4
    :goto_2
    :try_start_4
    iput-object v1, p0, Lⁱⁱ/ᵎﹶ;->ʼᐧ:Lʿʾ/ᵢˏ;

    new-instance p2, Lcom/bumptech/glide/load/engine/GlideException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lⁱⁱ/ᵎﹶ;->ᵎﹶ:Ljava/lang/Class;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " but instead got "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    goto :goto_3

    :cond_5
    const-string p3, ""

    :goto_3
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "{"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "} inside Resource{"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "}."

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_6

    const-string p3, ""

    goto :goto_4

    :cond_6
    const-string p3, " To indicate failure return a null Resource object, rather than a Resource object containing null data."

    :goto_4
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, v3}, Lⁱⁱ/ᵎﹶ;->ˆʾ(Lcom/bumptech/glide/load/engine/GlideException;I)V

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :goto_5
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz v1, :cond_7

    iget-object p2, p0, Lⁱⁱ/ᵎﹶ;->יـ:Lʿʾ/ˉʿ;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lʿʾ/ˉʿ;->ᵎﹶ(Lʿʾ/ᵢˏ;)V

    :cond_7
    throw p1
.end method

.method public final ᵎﹶ(Lⁱⁱ/ʽ;)Z
    .locals 17

    .prologue
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    instance-of v2, v0, Lⁱⁱ/ᵎﹶ;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    iget-object v2, v1, Lⁱⁱ/ᵎﹶ;->ʽ:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v4, v1, Lⁱⁱ/ᵎﹶ;->ʼˎ:I

    iget v5, v1, Lⁱⁱ/ᵎﹶ;->ˆʾ:I

    iget-object v6, v1, Lⁱⁱ/ᵎﹶ;->ﾞᴵ:Ljava/lang/Object;

    iget-object v7, v1, Lⁱⁱ/ᵎﹶ;->ᵎﹶ:Ljava/lang/Class;

    iget-object v8, v1, Lⁱⁱ/ᵎﹶ;->ᵔᵢ:Lⁱⁱ/ﹳٴ;

    iget-object v9, v1, Lⁱⁱ/ᵎﹶ;->ٴﹶ:Lcom/bumptech/glide/ᵎﹶ;

    iget-object v10, v1, Lⁱⁱ/ᵎﹶ;->ˉʿ:Ljava/util/List;

    if-eqz v10, :cond_1

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_1
    move v10, v3

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v0, Lⁱⁱ/ᵎﹶ;

    iget-object v11, v0, Lⁱⁱ/ᵎﹶ;->ʽ:Ljava/lang/Object;

    monitor-enter v11

    :try_start_1
    iget v2, v0, Lⁱⁱ/ᵎﹶ;->ʼˎ:I

    iget v12, v0, Lⁱⁱ/ᵎﹶ;->ˆʾ:I

    iget-object v13, v0, Lⁱⁱ/ᵎﹶ;->ﾞᴵ:Ljava/lang/Object;

    iget-object v14, v0, Lⁱⁱ/ᵎﹶ;->ᵎﹶ:Ljava/lang/Class;

    iget-object v15, v0, Lⁱⁱ/ᵎﹶ;->ᵔᵢ:Lⁱⁱ/ﹳٴ;

    move/from16 v16, v3

    iget-object v3, v0, Lⁱⁱ/ᵎﹶ;->ٴﹶ:Lcom/bumptech/glide/ᵎﹶ;

    iget-object v0, v0, Lⁱⁱ/ᵎﹶ;->ˉʿ:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_2
    move/from16 v0, v16

    :goto_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v4, v2, :cond_7

    if-ne v5, v12, :cond_7

    sget-object v2, Lʿٴ/ᵔʾ;->ﹳٴ:[C

    const/4 v2, 0x1

    if-nez v6, :cond_4

    if-nez v13, :cond_3

    move v4, v2

    goto :goto_2

    :cond_3
    move/from16 v4, v16

    goto :goto_2

    :cond_4
    invoke-virtual {v6, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    :goto_2
    if-eqz v4, :cond_7

    invoke-virtual {v7, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-nez v8, :cond_6

    if-nez v15, :cond_5

    move v4, v2

    goto :goto_3

    :cond_5
    move/from16 v4, v16

    goto :goto_3

    :cond_6
    invoke-virtual {v8, v15}, Lⁱⁱ/ﹳٴ;->ᵔᵢ(Lⁱⁱ/ﹳٴ;)Z

    move-result v4

    :goto_3
    if-eqz v4, :cond_7

    if-ne v9, v3, :cond_7

    if-ne v10, v0, :cond_7

    return v2

    :cond_7
    return v16

    :goto_4
    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :goto_5
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final ᵔᵢ()Z
    .locals 3

    .prologue
    iget-object v0, p0, Lⁱⁱ/ᵎﹶ;->ʽ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lⁱⁱ/ᵎﹶ;->ʾˋ:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final ⁱˊ()V
    .locals 3

    .prologue
    iget-boolean v0, p0, Lⁱⁱ/ᵎﹶ;->ʼʼ:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lⁱⁱ/ᵎﹶ;->ⁱˊ:Lˈﹳ/ˑﹳ;

    invoke-virtual {v0}, Lˈﹳ/ˑﹳ;->ﹳٴ()V

    iget-object v0, p0, Lⁱⁱ/ᵎﹶ;->ﾞʻ:Lʾˎ/ˑﹳ;

    invoke-interface {v0, p0}, Lʾˎ/ˑﹳ;->ˈ(Lⁱⁱ/ᵎﹶ;)V

    iget-object v0, p0, Lⁱⁱ/ᵎﹶ;->ᵔﹳ:Lcom/parse/ٴʼ;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/parse/ٴʼ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Lʿʾ/ˉʿ;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/parse/ٴʼ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Lʿʾ/ᵔﹳ;

    iget-object v0, v0, Lcom/parse/ٴʼ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lⁱⁱ/ᵎﹶ;

    invoke-virtual {v2, v0}, Lʿʾ/ᵔﹳ;->ˆʾ(Lⁱⁱ/ᵎﹶ;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    iput-object v0, p0, Lⁱⁱ/ᵎﹶ;->ᵔﹳ:Lcom/parse/ٴʼ;

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t start or clear loads in RequestListener or Target callbacks. If you\'re trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ﹳٴ()Z
    .locals 3

    .prologue
    iget-object v0, p0, Lⁱⁱ/ᵎﹶ;->ʽ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lⁱⁱ/ᵎﹶ;->ʾˋ:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final ﾞʻ(Lʿʾ/ᵢˏ;Ljava/lang/Object;I)V
    .locals 3

    .prologue
    iget-object v0, p0, Lⁱⁱ/ᵎﹶ;->ˈ:Lⁱⁱ/ˈ;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lⁱⁱ/ˈ;->getRoot()Lⁱⁱ/ˈ;

    move-result-object v1

    invoke-interface {v1}, Lⁱⁱ/ˈ;->ﹳٴ()Z

    move-result v1

    :cond_0
    const/4 v1, 0x4

    iput v1, p0, Lⁱⁱ/ᵎﹶ;->ʾˋ:I

    iput-object p1, p0, Lⁱⁱ/ᵎﹶ;->ʼᐧ:Lʿʾ/ᵢˏ;

    iget-object p1, p0, Lⁱⁱ/ᵎﹶ;->ˑﹳ:Lcom/bumptech/glide/ˑﹳ;

    iget p1, p1, Lcom/bumptech/glide/ˑﹳ;->ʼˎ:I

    const/4 v1, 0x3

    if-gt p1, v1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Finished loading "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/support/v4/media/session/ﹳٴ;->ʽﹳ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lⁱⁱ/ᵎﹶ;->ﾞᴵ:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " with size ["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lⁱⁱ/ᵎﹶ;->ـˆ:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lⁱⁱ/ᵎﹶ;->ʾᵎ:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] in "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lⁱⁱ/ᵎﹶ;->ﹳᐧ:J

    invoke-static {v1, v2}, Lʿٴ/ᵔᵢ;->ﹳٴ(J)D

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Glide"

    nop

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lⁱⁱ/ˈ;->ⁱˊ(Lⁱⁱ/ʽ;)V

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lⁱⁱ/ᵎﹶ;->ʼʼ:Z

    const/4 p1, 0x0

    :try_start_0
    iget-object v0, p0, Lⁱⁱ/ᵎﹶ;->ˉʿ:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lⁱⁱ/ˑﹳ;

    invoke-interface {v1, p2}, Lⁱⁱ/ˑﹳ;->ⁱˊ(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lⁱⁱ/ᵎﹶ;->ᵔʾ:Lˈʼ/ˈ;

    invoke-interface {v0, p3}, Lˈʼ/ˈ;->ⁱˊ(I)Lˈʼ/ʽ;

    move-result-object p3

    iget-object v0, p0, Lⁱⁱ/ᵎﹶ;->ﾞʻ:Lʾˎ/ˑﹳ;

    invoke-interface {v0, p2, p3}, Lʾˎ/ˑﹳ;->ﾞᴵ(Ljava/lang/Object;Lˈʼ/ʽ;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean p1, p0, Lⁱⁱ/ᵎﹶ;->ʼʼ:Z

    return-void

    :goto_1
    iput-boolean p1, p0, Lⁱⁱ/ᵎﹶ;->ʼʼ:Z

    throw p2
.end method

.method public final ﾞᴵ()V
    .locals 7

    .prologue
    iget-object v0, p0, Lⁱⁱ/ᵎﹶ;->ʽ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lⁱⁱ/ᵎﹶ;->ʼʼ:Z

    if-nez v1, :cond_e

    iget-object v1, p0, Lⁱⁱ/ᵎﹶ;->ⁱˊ:Lˈﹳ/ˑﹳ;

    invoke-virtual {v1}, Lˈﹳ/ˑﹳ;->ﹳٴ()V

    sget v1, Lʿٴ/ᵔᵢ;->ⁱˊ:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    iput-wide v1, p0, Lⁱⁱ/ᵎﹶ;->ﹳᐧ:J

    iget-object v1, p0, Lⁱⁱ/ᵎﹶ;->ﾞᴵ:Ljava/lang/Object;

    const/4 v2, 0x3

    const/4 v3, 0x5

    if-nez v1, :cond_3

    iget v1, p0, Lⁱⁱ/ᵎﹶ;->ʼˎ:I

    iget v4, p0, Lⁱⁱ/ᵎﹶ;->ˆʾ:I

    invoke-static {v1, v4}, Lʿٴ/ᵔʾ;->ʼˎ(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lⁱⁱ/ᵎﹶ;->ʼˎ:I

    iput v1, p0, Lⁱⁱ/ᵎﹶ;->ـˆ:I

    iget v1, p0, Lⁱⁱ/ᵎﹶ;->ˆʾ:I

    iput v1, p0, Lⁱⁱ/ᵎﹶ;->ʾᵎ:I

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_4

    :cond_0
    :goto_0
    iget-object v1, p0, Lⁱⁱ/ᵎﹶ;->ʻٴ:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    iget-object v1, p0, Lⁱⁱ/ᵎﹶ;->ᵔᵢ:Lⁱⁱ/ﹳٴ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    iput-object v1, p0, Lⁱⁱ/ᵎﹶ;->ʻٴ:Landroid/graphics/drawable/Drawable;

    :cond_1
    iget-object v1, p0, Lⁱⁱ/ᵎﹶ;->ʻٴ:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_2

    move v2, v3

    :cond_2
    new-instance v1, Lcom/bumptech/glide/load/engine/GlideException;

    const-string v3, "Received null model"

    invoke-direct {v1, v3}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lⁱⁱ/ᵎﹶ;->ˆʾ(Lcom/bumptech/glide/load/engine/GlideException;I)V

    monitor-exit v0

    return-void

    :cond_3
    iget v1, p0, Lⁱⁱ/ᵎﹶ;->ʾˋ:I

    const/4 v4, 0x2

    if-eq v1, v4, :cond_d

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-ne v1, v5, :cond_4

    iget-object v1, p0, Lⁱⁱ/ᵎﹶ;->ʼᐧ:Lʿʾ/ᵢˏ;

    invoke-virtual {p0, v1, v3, v6}, Lⁱⁱ/ᵎﹶ;->ٴﹶ(Lʿʾ/ᵢˏ;IZ)V

    monitor-exit v0

    return-void

    :cond_4
    iget-object v1, p0, Lⁱⁱ/ᵎﹶ;->ˉʿ:Ljava/util/List;

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lⁱⁱ/ˑﹳ;

    goto :goto_1

    :cond_6
    :goto_2
    iput v2, p0, Lⁱⁱ/ᵎﹶ;->ʾˋ:I

    iget v1, p0, Lⁱⁱ/ᵎﹶ;->ʼˎ:I

    iget v3, p0, Lⁱⁱ/ᵎﹶ;->ˆʾ:I

    invoke-static {v1, v3}, Lʿٴ/ᵔʾ;->ʼˎ(II)Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, p0, Lⁱⁱ/ᵎﹶ;->ʼˎ:I

    iget v3, p0, Lⁱⁱ/ᵎﹶ;->ˆʾ:I

    invoke-virtual {p0, v1, v3}, Lⁱⁱ/ᵎﹶ;->ˉʿ(II)V

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lⁱⁱ/ᵎﹶ;->ﾞʻ:Lʾˎ/ˑﹳ;

    invoke-interface {v1, p0}, Lʾˎ/ˑﹳ;->ˑﹳ(Lⁱⁱ/ᵎﹶ;)V

    :goto_3
    iget v1, p0, Lⁱⁱ/ᵎﹶ;->ʾˋ:I

    if-eq v1, v4, :cond_8

    if-ne v1, v2, :cond_b

    :cond_8
    iget-object v1, p0, Lⁱⁱ/ᵎﹶ;->ˈ:Lⁱⁱ/ˈ;

    if-eqz v1, :cond_9

    invoke-interface {v1, p0}, Lⁱⁱ/ˈ;->ʽ(Lⁱⁱ/ʽ;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    const/4 v6, 0x1

    :cond_a
    if-eqz v6, :cond_b

    iget-object v1, p0, Lⁱⁱ/ᵎﹶ;->ﾞʻ:Lʾˎ/ˑﹳ;

    invoke-virtual {p0}, Lⁱⁱ/ᵎﹶ;->ʽ()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v1, v2}, Lʾˎ/ˑﹳ;->ᵎﹶ(Landroid/graphics/drawable/Drawable;)V

    :cond_b
    sget-boolean v1, Lⁱⁱ/ᵎﹶ;->ᴵˊ:Z

    if-eqz v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finished run method in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lⁱⁱ/ᵎﹶ;->ﹳᐧ:J

    invoke-static {v2, v3}, Lʿٴ/ᵔᵢ;->ﹳٴ(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lⁱⁱ/ᵎﹶ;->ʼˎ(Ljava/lang/String;)V

    :cond_c
    monitor-exit v0

    return-void

    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot restart a running request"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "You can\'t start or clear loads in RequestListener or Target callbacks. If you\'re trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
