.class public Lcom/google/firebase/installations/FirebaseInstallationsRegistrar;
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

    const-string v0, "fire-installations"

    sput-object v0, Lcom/google/firebase/installations/FirebaseInstallationsRegistrar;->LIBRARY_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static lambda$getComponents$0(Lˏ/ʽ;)Lʽʼ/ˑﹳ;
    .locals 7

    new-instance v0, Lʽʼ/ˈ;

    const-class v1, Lˉᵎ/ᵎﹶ;

    invoke-interface {p0, v1}, Lˏ/ʽ;->ⁱˊ(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˉᵎ/ᵎﹶ;

    const-class v2, Lـˎ/ˑﹳ;

    invoke-interface {p0, v2}, Lˏ/ʽ;->ᵎﹶ(Ljava/lang/Class;)Lʾﹳ/ⁱˊ;

    move-result-object v2

    new-instance v3, Lˏ/ˉˆ;

    const-class v4, Lˋˎ/ﹳٴ;

    const-class v5, Ljava/util/concurrent/ExecutorService;

    invoke-direct {v3, v4, v5}, Lˏ/ˉˆ;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-interface {p0, v3}, Lˏ/ʽ;->ʽ(Lˏ/ˉˆ;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lˏ/ˉˆ;

    const-class v5, Lˋˎ/ⁱˊ;

    const-class v6, Ljava/util/concurrent/Executor;

    invoke-direct {v4, v5, v6}, Lˏ/ˉˆ;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-interface {p0, v4}, Lˏ/ʽ;->ʽ(Lˏ/ˉˆ;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/Executor;

    new-instance v4, Lˏᐧ/ˆʾ;

    invoke-direct {v4, p0}, Lˏᐧ/ˆʾ;-><init>(Ljava/util/concurrent/Executor;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lʽʼ/ˈ;-><init>(Lˉᵎ/ᵎﹶ;Lʾﹳ/ⁱˊ;Ljava/util/concurrent/ExecutorService;Lˏᐧ/ˆʾ;)V

    return-object v0
.end method

.method public static synthetic ﹳٴ(Landroidx/leanback/widget/ʻٴ;)Lʽʼ/ˑﹳ;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/installations/FirebaseInstallationsRegistrar;->lambda$getComponents$0(Lˏ/ʽ;)Lʽʼ/ˑﹳ;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "L\u02cf/\u2071\u02ca;",
            ">;"
        }
    .end annotation

    const-class v0, Lʽʼ/ˑﹳ;

    invoke-static {v0}, Lˏ/ⁱˊ;->ﹳٴ(Ljava/lang/Class;)Lˏ/ﹳٴ;

    move-result-object v0

    const-string v1, "fire-installations"

    iput-object v1, v0, Lˏ/ﹳٴ;->ﹳٴ:Ljava/lang/String;

    const-class v2, Lˉᵎ/ᵎﹶ;

    invoke-static {v2}, Lˏ/ʼˎ;->ﹳٴ(Ljava/lang/Class;)Lˏ/ʼˎ;

    move-result-object v2

    invoke-virtual {v0, v2}, Lˏ/ﹳٴ;->ﹳٴ(Lˏ/ʼˎ;)V

    new-instance v2, Lˏ/ʼˎ;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-class v5, Lـˎ/ˑﹳ;

    invoke-direct {v2, v3, v4, v5}, Lˏ/ʼˎ;-><init>(IILjava/lang/Class;)V

    invoke-virtual {v0, v2}, Lˏ/ﹳٴ;->ﹳٴ(Lˏ/ʼˎ;)V

    new-instance v2, Lˏ/ˉˆ;

    const-class v5, Lˋˎ/ﹳٴ;

    const-class v6, Ljava/util/concurrent/ExecutorService;

    invoke-direct {v2, v5, v6}, Lˏ/ˉˆ;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    new-instance v5, Lˏ/ʼˎ;

    invoke-direct {v5, v2, v4, v3}, Lˏ/ʼˎ;-><init>(Lˏ/ˉˆ;II)V

    invoke-virtual {v0, v5}, Lˏ/ﹳٴ;->ﹳٴ(Lˏ/ʼˎ;)V

    new-instance v2, Lˏ/ˉˆ;

    const-class v5, Lˋˎ/ⁱˊ;

    const-class v6, Ljava/util/concurrent/Executor;

    invoke-direct {v2, v5, v6}, Lˏ/ˉˆ;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    new-instance v5, Lˏ/ʼˎ;

    invoke-direct {v5, v2, v4, v3}, Lˏ/ʼˎ;-><init>(Lˏ/ˉˆ;II)V

    invoke-virtual {v0, v5}, Lˏ/ﹳٴ;->ﹳٴ(Lˏ/ʼˎ;)V

    new-instance v2, Lʻʿ/ᵔﹳ;

    const/16 v5, 0x14

    invoke-direct {v2, v5}, Lʻʿ/ᵔﹳ;-><init>(I)V

    iput-object v2, v0, Lˏ/ﹳٴ;->ﾞᴵ:Lˏ/ˈ;

    invoke-virtual {v0}, Lˏ/ﹳٴ;->ⁱˊ()Lˏ/ⁱˊ;

    move-result-object v0

    new-instance v2, Lـˎ/ˈ;

    invoke-direct {v2, v3}, Lـˎ/ˈ;-><init>(I)V

    const-class v5, Lـˎ/ˈ;

    invoke-static {v5}, Lˏ/ⁱˊ;->ﹳٴ(Ljava/lang/Class;)Lˏ/ﹳٴ;

    move-result-object v5

    iput v4, v5, Lˏ/ﹳٴ;->ˑﹳ:I

    new-instance v6, Lʻʿ/ᵔᵢ;

    invoke-direct {v6, v2}, Lʻʿ/ᵔᵢ;-><init>(Ljava/lang/Object;)V

    iput-object v6, v5, Lˏ/ﹳٴ;->ﾞᴵ:Lˏ/ˈ;

    invoke-virtual {v5}, Lˏ/ﹳٴ;->ⁱˊ()Lˏ/ⁱˊ;

    move-result-object v2

    const-string v5, "18.0.0"

    invoke-static {v1, v5}, Lﹳˋ/ٴﹶ;->ʼˎ(Ljava/lang/String;Ljava/lang/String;)Lˏ/ⁱˊ;

    move-result-object v1

    const/4 v5, 0x3

    new-array v5, v5, [Lˏ/ⁱˊ;

    aput-object v0, v5, v3

    aput-object v2, v5, v4

    const/4 v0, 0x2

    aput-object v1, v5, v0

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
