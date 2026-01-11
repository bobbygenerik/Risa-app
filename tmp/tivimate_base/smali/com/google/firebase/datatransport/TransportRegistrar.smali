.class public Lcom/google/firebase/datatransport/TransportRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final LIBRARY_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "fire-transport"

    sput-object v0, Lcom/google/firebase/datatransport/TransportRegistrar;->LIBRARY_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$getComponents$0(Lˏ/ʽ;)Lᴵˆ/ˑﹳ;
    .locals 1

    const-class v0, Landroid/content/Context;

    invoke-interface {p0, v0}, Lˏ/ʽ;->ⁱˊ(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lˉˋ/ʼᐧ;->ⁱˊ(Landroid/content/Context;)V

    invoke-static {}, Lˉˋ/ʼᐧ;->ﹳٴ()Lˉˋ/ʼᐧ;

    move-result-object p0

    sget-object v0, Lٴי/ﹳٴ;->ﾞᴵ:Lٴי/ﹳٴ;

    invoke-virtual {p0, v0}, Lˉˋ/ʼᐧ;->ʽ(Lˉˋ/ٴﹶ;)Lˉˋ/ˉˆ;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getComponents$1(Lˏ/ʽ;)Lᴵˆ/ˑﹳ;
    .locals 1

    const-class v0, Landroid/content/Context;

    invoke-interface {p0, v0}, Lˏ/ʽ;->ⁱˊ(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lˉˋ/ʼᐧ;->ⁱˊ(Landroid/content/Context;)V

    invoke-static {}, Lˉˋ/ʼᐧ;->ﹳٴ()Lˉˋ/ʼᐧ;

    move-result-object p0

    sget-object v0, Lٴי/ﹳٴ;->ﾞᴵ:Lٴי/ﹳٴ;

    invoke-virtual {p0, v0}, Lˉˋ/ʼᐧ;->ʽ(Lˉˋ/ٴﹶ;)Lˉˋ/ˉˆ;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getComponents$2(Lˏ/ʽ;)Lᴵˆ/ˑﹳ;
    .locals 1

    const-class v0, Landroid/content/Context;

    invoke-interface {p0, v0}, Lˏ/ʽ;->ⁱˊ(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lˉˋ/ʼᐧ;->ⁱˊ(Landroid/content/Context;)V

    invoke-static {}, Lˉˋ/ʼᐧ;->ﹳٴ()Lˉˋ/ʼᐧ;

    move-result-object p0

    sget-object v0, Lٴי/ﹳٴ;->ˑﹳ:Lٴי/ﹳٴ;

    invoke-virtual {p0, v0}, Lˉˋ/ʼᐧ;->ʽ(Lˉˋ/ٴﹶ;)Lˉˋ/ˉˆ;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic ʽ(Landroidx/leanback/widget/ʻٴ;)Lᴵˆ/ˑﹳ;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/datatransport/TransportRegistrar;->lambda$getComponents$0(Lˏ/ʽ;)Lᴵˆ/ˑﹳ;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic ⁱˊ(Landroidx/leanback/widget/ʻٴ;)Lᴵˆ/ˑﹳ;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/datatransport/TransportRegistrar;->lambda$getComponents$1(Lˏ/ʽ;)Lᴵˆ/ˑﹳ;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic ﹳٴ(Landroidx/leanback/widget/ʻٴ;)Lᴵˆ/ˑﹳ;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/datatransport/TransportRegistrar;->lambda$getComponents$2(Lˏ/ʽ;)Lᴵˆ/ˑﹳ;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "L\u02cf/\u2071\u02ca;",
            ">;"
        }
    .end annotation

    const-class v0, Lᴵˆ/ˑﹳ;

    invoke-static {v0}, Lˏ/ⁱˊ;->ﹳٴ(Ljava/lang/Class;)Lˏ/ﹳٴ;

    move-result-object v1

    const-string v2, "fire-transport"

    iput-object v2, v1, Lˏ/ﹳٴ;->ﹳٴ:Ljava/lang/String;

    const-class v3, Landroid/content/Context;

    invoke-static {v3}, Lˏ/ʼˎ;->ﹳٴ(Ljava/lang/Class;)Lˏ/ʼˎ;

    move-result-object v4

    invoke-virtual {v1, v4}, Lˏ/ﹳٴ;->ﹳٴ(Lˏ/ʼˎ;)V

    new-instance v4, Lʻʿ/ᵔﹳ;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lʻʿ/ᵔﹳ;-><init>(I)V

    iput-object v4, v1, Lˏ/ﹳٴ;->ﾞᴵ:Lˏ/ˈ;

    invoke-virtual {v1}, Lˏ/ﹳٴ;->ⁱˊ()Lˏ/ⁱˊ;

    move-result-object v1

    new-instance v4, Lˏ/ˉˆ;

    const-class v6, Lʻⁱ/ﹳٴ;

    invoke-direct {v4, v6, v0}, Lˏ/ˉˆ;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v4}, Lˏ/ⁱˊ;->ⁱˊ(Lˏ/ˉˆ;)Lˏ/ﹳٴ;

    move-result-object v4

    invoke-static {v3}, Lˏ/ʼˎ;->ﹳٴ(Ljava/lang/Class;)Lˏ/ʼˎ;

    move-result-object v6

    invoke-virtual {v4, v6}, Lˏ/ﹳٴ;->ﹳٴ(Lˏ/ʼˎ;)V

    new-instance v6, Lʻʿ/ᵔﹳ;

    const/4 v7, 0x3

    invoke-direct {v6, v7}, Lʻʿ/ᵔﹳ;-><init>(I)V

    iput-object v6, v4, Lˏ/ﹳٴ;->ﾞᴵ:Lˏ/ˈ;

    invoke-virtual {v4}, Lˏ/ﹳٴ;->ⁱˊ()Lˏ/ⁱˊ;

    move-result-object v4

    new-instance v6, Lˏ/ˉˆ;

    const-class v8, Lʻⁱ/ⁱˊ;

    invoke-direct {v6, v8, v0}, Lˏ/ˉˆ;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v6}, Lˏ/ⁱˊ;->ⁱˊ(Lˏ/ˉˆ;)Lˏ/ﹳٴ;

    move-result-object v0

    invoke-static {v3}, Lˏ/ʼˎ;->ﹳٴ(Ljava/lang/Class;)Lˏ/ʼˎ;

    move-result-object v3

    invoke-virtual {v0, v3}, Lˏ/ﹳٴ;->ﹳٴ(Lˏ/ʼˎ;)V

    new-instance v3, Lʻʿ/ᵔﹳ;

    const/4 v6, 0x4

    invoke-direct {v3, v6}, Lʻʿ/ᵔﹳ;-><init>(I)V

    iput-object v3, v0, Lˏ/ﹳٴ;->ﾞᴵ:Lˏ/ˈ;

    invoke-virtual {v0}, Lˏ/ﹳٴ;->ⁱˊ()Lˏ/ⁱˊ;

    move-result-object v0

    const-string v3, "19.0.0"

    invoke-static {v2, v3}, Lﹳˋ/ٴﹶ;->ʼˎ(Ljava/lang/String;Ljava/lang/String;)Lˏ/ⁱˊ;

    move-result-object v2

    new-array v3, v6, [Lˏ/ⁱˊ;

    const/4 v6, 0x0

    aput-object v1, v3, v6

    const/4 v1, 0x1

    aput-object v4, v3, v1

    aput-object v0, v3, v5

    aput-object v2, v3, v7

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
