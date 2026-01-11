.class public final Lʾˈ/ʽʽ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:I

.field public final ˈ:Lʻᵢ/ʼˎ;

.field public final ˑﹳ:Lʻᵢ/ʼˎ;

.field public final ⁱˊ:Lʻᵢ/ʼˎ;

.field public final ﹳٴ:Landroid/content/Context;

.field public ﾞᴵ:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lʾˈ/ﹶᐧ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʾˈ/ʽʽ;->ﹳٴ:Landroid/content/Context;

    new-instance p1, Lʾˈ/ᴵˊ;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lʾˈ/ᴵˊ;-><init>(Lʾˈ/ʽʽ;I)V

    new-instance v0, Lʻᵢ/ʼˎ;

    invoke-direct {v0, p1}, Lʻᵢ/ʼˎ;-><init>(Lᴵⁱ/ﹳٴ;)V

    iput-object v0, p0, Lʾˈ/ʽʽ;->ⁱˊ:Lʻᵢ/ʼˎ;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    iput p1, p0, Lʾˈ/ʽʽ;->ʽ:I

    new-instance p1, Landroidx/lifecycle/ـˏ;

    const/16 v0, 0x1a

    invoke-direct {p1, v0, p2}, Landroidx/lifecycle/ـˏ;-><init>(ILjava/lang/Object;)V

    new-instance p2, Lʻᵢ/ʼˎ;

    invoke-direct {p2, p1}, Lʻᵢ/ʼˎ;-><init>(Lᴵⁱ/ﹳٴ;)V

    iput-object p2, p0, Lʾˈ/ʽʽ;->ˈ:Lʻᵢ/ʼˎ;

    new-instance p1, Lʾˈ/ᴵˊ;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lʾˈ/ᴵˊ;-><init>(Lʾˈ/ʽʽ;I)V

    new-instance p2, Lʻᵢ/ʼˎ;

    invoke-direct {p2, p1}, Lʻᵢ/ʼˎ;-><init>(Lᴵⁱ/ﹳٴ;)V

    iput-object p2, p0, Lʾˈ/ʽʽ;->ˑﹳ:Lʻᵢ/ʼˎ;

    return-void
.end method


# virtual methods
.method public final ⁱˊ(Ljava/util/Map;)Ljava/util/Map;
    .locals 4

    .prologue
    iget-object v0, p0, Lʾˈ/ʽʽ;->ˈ:Lʻᵢ/ʼˎ;

    if-eqz p1, :cond_0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0}, Lʾˈ/ʽʽ;->ﹳٴ()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lʾˈ/ʾˋ;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v0}, Lʻᵢ/ʼˎ;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Lʾˈ/ʾˋ;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lﹶˈ/ˏי;->ᵎᵔ(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lʾˈ/ʽʽ;->ﹳٴ()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lʾˈ/ʾˋ;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v0}, Lʻᵢ/ʼˎ;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lʾˈ/ʾˋ;-><init>(ILjava/lang/String;)V

    invoke-static {p1, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final ﹳٴ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lʾˈ/ʽʽ;->ⁱˊ:Lʻᵢ/ʼˎ;

    invoke-virtual {v0}, Lʻᵢ/ʼˎ;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
