.class public final Lˆᴵ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lⁱʼ/ʼᐧ;


# static fields
.field public static final ⁱˊ:Lʼᵔ/ᵎﹶ;


# instance fields
.field public final ﹳٴ:Lᐧﹳ/ʽ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x9c4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Timeout"

    invoke-static {v0, v1}, Lʼᵔ/ᵎﹶ;->ﹳٴ(Ljava/lang/Object;Ljava/lang/String;)Lʼᵔ/ᵎﹶ;

    move-result-object v0

    sput-object v0, Lˆᴵ/ﹳٴ;->ⁱˊ:Lʼᵔ/ᵎﹶ;

    return-void
.end method

.method public constructor <init>(Lᐧﹳ/ʽ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˆᴵ/ﹳٴ;->ﹳٴ:Lᐧﹳ/ʽ;

    return-void
.end method


# virtual methods
.method public final bridge synthetic ⁱˊ(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lⁱʼ/ᵎﹶ;

    const/4 p1, 0x1

    return p1
.end method

.method public final ﹳٴ(Ljava/lang/Object;IILʼᵔ/ᵔᵢ;)Lⁱʼ/ˉˆ;
    .locals 2

    .prologue
    check-cast p1, Lⁱʼ/ᵎﹶ;

    iget-object p2, p0, Lˆᴵ/ﹳٴ;->ﹳٴ:Lᐧﹳ/ʽ;

    if-eqz p2, :cond_1

    iget-object p2, p2, Lᐧﹳ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast p2, Lⁱʼ/ˉʿ;

    invoke-static {p1}, Lⁱʼ/ᵔʾ;->ﹳٴ(Ljava/lang/Object;)Lⁱʼ/ᵔʾ;

    move-result-object p3

    invoke-virtual {p2, p3}, Lʿٴ/ˆʾ;->ﹳٴ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lⁱʼ/ᵔʾ;->ⁱˊ:Ljava/util/ArrayDeque;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1, p3}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v0, Lⁱʼ/ᵎﹶ;

    if-nez v0, :cond_0

    invoke-static {p1}, Lⁱʼ/ᵔʾ;->ﹳٴ(Ljava/lang/Object;)Lⁱʼ/ᵔʾ;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lʿٴ/ˆʾ;->ˈ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object p1, v0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    :goto_0
    sget-object p2, Lˆᴵ/ﹳٴ;->ⁱˊ:Lʼᵔ/ᵎﹶ;

    invoke-virtual {p4, p2}, Lʼᵔ/ᵔᵢ;->ʽ(Lʼᵔ/ᵎﹶ;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    new-instance p3, Lⁱʼ/ˉˆ;

    new-instance p4, Lcom/bumptech/glide/load/data/ﾞʻ;

    invoke-direct {p4, p1, p2}, Lcom/bumptech/glide/load/data/ﾞʻ;-><init>(Lⁱʼ/ᵎﹶ;I)V

    invoke-direct {p3, p1, p4}, Lⁱʼ/ˉˆ;-><init>(Lʼᵔ/ˑﹳ;Lcom/bumptech/glide/load/data/ˑﹳ;)V

    return-object p3
.end method
