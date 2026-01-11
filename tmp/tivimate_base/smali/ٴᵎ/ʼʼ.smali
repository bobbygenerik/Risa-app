.class public final Lٴᵎ/ʼʼ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Lٴᵎ/ﹳٴ;

.field public final ˈ:Z

.field public final ˑﹳ:Ljava/util/List;

.field public ᵎﹶ:Ljava/lang/Object;

.field public final ᵔᵢ:Ljava/util/ArrayList;

.field public final ⁱˊ:Lˉˆ/ʿ;

.field public final ﹳٴ:Lˎᵢ/ﹳٴ;

.field public ﾞᴵ:I


# direct methods
.method public constructor <init>(Lˎᵢ/ﹳٴ;Lˉˆ/ʿ;Lٴᵎ/ﹳٴ;Z)V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lٴᵎ/ʼʼ;->ﹳٴ:Lˎᵢ/ﹳٴ;

    iput-object p2, p0, Lٴᵎ/ʼʼ;->ⁱˊ:Lˉˆ/ʿ;

    iput-object p3, p0, Lٴᵎ/ʼʼ;->ʽ:Lٴᵎ/ﹳٴ;

    iput-boolean p4, p0, Lٴᵎ/ʼʼ;->ˈ:Z

    sget-object p2, Lﹶˈ/ʼᐧ;->ʾˋ:Lﹶˈ/ʼᐧ;

    iput-object p2, p0, Lٴᵎ/ʼʼ;->ˑﹳ:Ljava/util/List;

    iput-object p2, p0, Lٴᵎ/ʼʼ;->ᵎﹶ:Ljava/lang/Object;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lٴᵎ/ʼʼ;->ᵔᵢ:Ljava/util/ArrayList;

    iget-object p2, p1, Lˎᵢ/ﹳٴ;->ᵔᵢ:Lˎᵢ/ʼᐧ;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Lˎᵢ/ʼᐧ;->ᵔᵢ()Ljava/net/URI;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p4, :cond_0

    new-array p1, v0, [Ljava/net/Proxy;

    sget-object p2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    aput-object p2, p1, v1

    invoke-static {p1}, Lⁱᐧ/ˑﹳ;->ٴﹶ([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    :cond_0
    iget-object p1, p1, Lˎᵢ/ﹳٴ;->ᵎﹶ:Ljava/net/ProxySelector;

    invoke-virtual {p1, p2}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lⁱᐧ/ˑﹳ;->ˆʾ(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    :cond_2
    :goto_0
    new-array p1, v0, [Ljava/net/Proxy;

    sget-object p2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    aput-object p2, p1, v1

    invoke-static {p1}, Lⁱᐧ/ˑﹳ;->ٴﹶ([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lٴᵎ/ʼʼ;->ˑﹳ:Ljava/util/List;

    iput v1, p0, Lٴᵎ/ʼʼ;->ﾞᴵ:I

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final ﹳٴ()Z
    .locals 2

    .prologue
    iget v0, p0, Lٴᵎ/ʼʼ;->ﾞᴵ:I

    iget-object v1, p0, Lٴᵎ/ʼʼ;->ˑﹳ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lٴᵎ/ʼʼ;->ᵔᵢ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
