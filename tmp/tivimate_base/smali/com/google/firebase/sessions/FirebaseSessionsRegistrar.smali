.class public final Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final Companion:Lʾˈ/ʽﹳ;

.field public static final LIBRARY_NAME:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final appContext:Lˏ/ˉˆ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "L\u02cf/\u02c9\u02c6;"
        }
    .end annotation
.end field

.field private static final backgroundDispatcher:Lˏ/ˉˆ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "L\u02cf/\u02c9\u02c6;"
        }
    .end annotation
.end field

.field private static final blockingDispatcher:Lˏ/ˉˆ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "L\u02cf/\u02c9\u02c6;"
        }
    .end annotation
.end field

.field private static final firebaseApp:Lˏ/ˉˆ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "L\u02cf/\u02c9\u02c6;"
        }
    .end annotation
.end field

.field private static final firebaseInstallationsApi:Lˏ/ˉˆ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "L\u02cf/\u02c9\u02c6;"
        }
    .end annotation
.end field

.field private static final firebaseSessionsComponent:Lˏ/ˉˆ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "L\u02cf/\u02c9\u02c6;"
        }
    .end annotation
.end field

.field private static final transportFactory:Lˏ/ˉˆ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "L\u02cf/\u02c9\u02c6;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "fire-sessions"

    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->LIBRARY_NAME:Ljava/lang/String;

    new-instance v0, Lʾˈ/ʽﹳ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->Companion:Lʾˈ/ʽﹳ;

    const-class v0, Landroid/content/Context;

    invoke-static {v0}, Lˏ/ˉˆ;->ﹳٴ(Ljava/lang/Class;)Lˏ/ˉˆ;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->appContext:Lˏ/ˉˆ;

    const-class v0, Lˉᵎ/ᵎﹶ;

    invoke-static {v0}, Lˏ/ˉˆ;->ﹳٴ(Ljava/lang/Class;)Lˏ/ˉˆ;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseApp:Lˏ/ˉˆ;

    const-class v0, Lʽʼ/ˑﹳ;

    invoke-static {v0}, Lˏ/ˉˆ;->ﹳٴ(Ljava/lang/Class;)Lˏ/ˉˆ;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseInstallationsApi:Lˏ/ˉˆ;

    new-instance v0, Lˏ/ˉˆ;

    const-class v1, Lˋˎ/ﹳٴ;

    const-class v2, Lᴵי/ˏי;

    invoke-direct {v0, v1, v2}, Lˏ/ˉˆ;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->backgroundDispatcher:Lˏ/ˉˆ;

    new-instance v0, Lˏ/ˉˆ;

    const-class v1, Lˋˎ/ⁱˊ;

    invoke-direct {v0, v1, v2}, Lˏ/ˉˆ;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->blockingDispatcher:Lˏ/ˉˆ;

    const-class v0, Lᴵˆ/ˑﹳ;

    invoke-static {v0}, Lˏ/ˉˆ;->ﹳٴ(Ljava/lang/Class;)Lˏ/ˉˆ;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->transportFactory:Lˏ/ˉˆ;

    const-class v0, Lʾˈ/ᵔﹳ;

    invoke-static {v0}, Lˏ/ˉˆ;->ﹳٴ(Ljava/lang/Class;)Lˏ/ˉˆ;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseSessionsComponent:Lˏ/ˉˆ;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getAppContext$cp()Lˏ/ˉˆ;
    .locals 1

    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->appContext:Lˏ/ˉˆ;

    return-object v0
.end method

.method public static final synthetic access$getBackgroundDispatcher$cp()Lˏ/ˉˆ;
    .locals 1

    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->backgroundDispatcher:Lˏ/ˉˆ;

    return-object v0
.end method

.method public static final synthetic access$getBlockingDispatcher$cp()Lˏ/ˉˆ;
    .locals 1

    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->blockingDispatcher:Lˏ/ˉˆ;

    return-object v0
.end method

.method public static final synthetic access$getFirebaseApp$cp()Lˏ/ˉˆ;
    .locals 1

    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseApp:Lˏ/ˉˆ;

    return-object v0
.end method

.method public static final synthetic access$getFirebaseInstallationsApi$cp()Lˏ/ˉˆ;
    .locals 1

    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseInstallationsApi:Lˏ/ˉˆ;

    return-object v0
.end method

.method public static final synthetic access$getFirebaseSessionsComponent$cp()Lˏ/ˉˆ;
    .locals 1

    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseSessionsComponent:Lˏ/ˉˆ;

    return-object v0
.end method

.method public static final synthetic access$getTransportFactory$cp()Lˏ/ˉˆ;
    .locals 1

    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->transportFactory:Lˏ/ˉˆ;

    return-object v0
.end method

.method private static final getComponents$lambda$0(Lˏ/ʽ;)Lʾˈ/ᵔʾ;
    .locals 1

    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseSessionsComponent:Lˏ/ˉˆ;

    invoke-interface {p0, v0}, Lˏ/ʽ;->ʽ(Lˏ/ˉˆ;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lʾˈ/ᵔﹳ;

    check-cast p0, Lʾˈ/ʼˎ;

    iget-object p0, p0, Lʾˈ/ʼˎ;->ʼᐧ:Lﾞﹶ/ʽ;

    invoke-interface {p0}, Lᵎˋ/ﹳٴ;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lʾˈ/ᵔʾ;

    return-object p0
.end method

.method private static final getComponents$lambda$1(Lˏ/ʽ;)Lʾˈ/ᵔﹳ;
    .locals 15

    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->appContext:Lˏ/ˉˆ;

    invoke-interface {p0, v0}, Lˏ/ʽ;->ʽ(Lˏ/ˉˆ;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    sget-object v1, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->backgroundDispatcher:Lˏ/ˉˆ;

    invoke-interface {p0, v1}, Lˏ/ʽ;->ʽ(Lˏ/ˉˆ;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˈי/ᵔᵢ;

    sget-object v2, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->blockingDispatcher:Lˏ/ˉˆ;

    invoke-interface {p0, v2}, Lˏ/ʽ;->ʽ(Lˏ/ˉˆ;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lˈי/ᵔᵢ;

    sget-object v3, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseApp:Lˏ/ˉˆ;

    invoke-interface {p0, v3}, Lˏ/ʽ;->ʽ(Lˏ/ˉˆ;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lˉᵎ/ᵎﹶ;

    sget-object v4, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseInstallationsApi:Lˏ/ˉˆ;

    invoke-interface {p0, v4}, Lˏ/ʽ;->ʽ(Lˏ/ˉˆ;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lʽʼ/ˑﹳ;

    sget-object v5, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->transportFactory:Lˏ/ˉˆ;

    invoke-interface {p0, v5}, Lˏ/ʽ;->ᵔᵢ(Lˏ/ˉˆ;)Lʾﹳ/ⁱˊ;

    move-result-object p0

    new-instance v5, Lʾˈ/ʼˎ;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-static {v3}, Lʾﹶ/ʽ;->ⁱˊ(Ljava/lang/Object;)Lʾﹶ/ʽ;

    move-result-object v3

    iput-object v3, v5, Lʾˈ/ʼˎ;->ﹳٴ:Lʾﹶ/ʽ;

    invoke-static {v0}, Lʾﹶ/ʽ;->ⁱˊ(Ljava/lang/Object;)Lʾﹶ/ʽ;

    move-result-object v0

    iput-object v0, v5, Lʾˈ/ʼˎ;->ⁱˊ:Lʾﹶ/ʽ;

    new-instance v3, Lʾˈ/ﹳᐧ;

    const/4 v6, 0x1

    invoke-direct {v3, v0, v6}, Lʾˈ/ﹳᐧ;-><init>(Lʾﹶ/ʽ;I)V

    invoke-static {v3}, Lﾞﹶ/ﹳٴ;->ﹳٴ(Lﾞﹶ/ⁱˊ;)Lﾞﹶ/ʽ;

    move-result-object v0

    iput-object v0, v5, Lʾˈ/ʼˎ;->ʽ:Lﾞﹶ/ʽ;

    sget-object v0, Lʾˈ/יـ;->ﹳٴ:Lʾˈ/ʼᐧ;

    invoke-static {v0}, Lﾞﹶ/ﹳٴ;->ﹳٴ(Lﾞﹶ/ⁱˊ;)Lﾞﹶ/ʽ;

    move-result-object v0

    iput-object v0, v5, Lʾˈ/ʼˎ;->ˈ:Lﾞﹶ/ʽ;

    invoke-static {v4}, Lʾﹶ/ʽ;->ⁱˊ(Ljava/lang/Object;)Lʾﹶ/ʽ;

    move-result-object v0

    iput-object v0, v5, Lʾˈ/ʼˎ;->ˑﹳ:Lʾﹶ/ʽ;

    iget-object v0, v5, Lʾˈ/ʼˎ;->ﹳٴ:Lʾﹶ/ʽ;

    new-instance v3, Lʾˈ/ﹳᐧ;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lʾˈ/ﹳᐧ;-><init>(Lʾﹶ/ʽ;I)V

    invoke-static {v3}, Lﾞﹶ/ﹳٴ;->ﹳٴ(Lﾞﹶ/ⁱˊ;)Lﾞﹶ/ʽ;

    move-result-object v0

    iput-object v0, v5, Lʾˈ/ʼˎ;->ﾞᴵ:Lﾞﹶ/ʽ;

    invoke-static {v2}, Lʾﹶ/ʽ;->ⁱˊ(Ljava/lang/Object;)Lʾﹶ/ʽ;

    move-result-object v0

    iput-object v0, v5, Lʾˈ/ʼˎ;->ᵎﹶ:Lʾﹶ/ʽ;

    iget-object v2, v5, Lʾˈ/ʼˎ;->ﾞᴵ:Lﾞﹶ/ʽ;

    new-instance v3, Lʾˈ/ˈٴ;

    invoke-direct {v3, v2, v0}, Lʾˈ/ˈٴ;-><init>(Lﾞﹶ/ʽ;Lʾﹶ/ʽ;)V

    invoke-static {v3}, Lﾞﹶ/ﹳٴ;->ﹳٴ(Lﾞﹶ/ⁱˊ;)Lﾞﹶ/ʽ;

    move-result-object v0

    iput-object v0, v5, Lʾˈ/ʼˎ;->ᵔᵢ:Lﾞﹶ/ʽ;

    invoke-static {v1}, Lʾﹶ/ʽ;->ⁱˊ(Ljava/lang/Object;)Lʾﹶ/ʽ;

    move-result-object v0

    iput-object v0, v5, Lʾˈ/ʼˎ;->ʼˎ:Lʾﹶ/ʽ;

    iget-object v0, v5, Lʾˈ/ʼˎ;->ⁱˊ:Lʾﹶ/ʽ;

    iget-object v1, v5, Lʾˈ/ʼˎ;->ᵎﹶ:Lʾﹶ/ʽ;

    new-instance v2, Lﹳʽ/ˊʻ;

    const/16 v3, 0xa

    invoke-direct {v2, v0, v1, v3, v4}, Lﹳʽ/ˊʻ;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-static {v2}, Lﾞﹶ/ﹳٴ;->ﹳٴ(Lﾞﹶ/ⁱˊ;)Lﾞﹶ/ʽ;

    move-result-object v0

    iget-object v1, v5, Lʾˈ/ʼˎ;->ʼˎ:Lʾﹶ/ʽ;

    iget-object v2, v5, Lʾˈ/ʼˎ;->ˈ:Lﾞﹶ/ʽ;

    new-instance v3, Lcom/parse/ٴʼ;

    const/16 v4, 0x12

    invoke-direct {v3, v1, v2, v0, v4}, Lcom/parse/ٴʼ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v3}, Lﾞﹶ/ﹳٴ;->ﹳٴ(Lﾞﹶ/ⁱˊ;)Lﾞﹶ/ʽ;

    move-result-object v11

    iget-object v7, v5, Lʾˈ/ʼˎ;->ˈ:Lﾞﹶ/ʽ;

    iget-object v8, v5, Lʾˈ/ʼˎ;->ˑﹳ:Lʾﹶ/ʽ;

    iget-object v9, v5, Lʾˈ/ʼˎ;->ﾞᴵ:Lﾞﹶ/ʽ;

    iget-object v10, v5, Lʾˈ/ʼˎ;->ᵔᵢ:Lﾞﹶ/ʽ;

    new-instance v6, Landroidx/leanback/widget/ʻٴ;

    const/16 v12, 0xc

    invoke-direct/range {v6 .. v12}, Landroidx/leanback/widget/ʻٴ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v6}, Lﾞﹶ/ﹳٴ;->ﹳٴ(Lﾞﹶ/ⁱˊ;)Lﾞﹶ/ʽ;

    move-result-object v0

    iget-object v1, v5, Lʾˈ/ʼˎ;->ʽ:Lﾞﹶ/ʽ;

    new-instance v2, Lʾˈ/ˈⁱ;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v0, v3}, Lʾˈ/ˈⁱ;-><init>(Lﾞﹶ/ʽ;Lﾞﹶ/ʽ;I)V

    invoke-static {v2}, Lﾞﹶ/ﹳٴ;->ﹳٴ(Lﾞﹶ/ⁱˊ;)Lﾞﹶ/ʽ;

    move-result-object v0

    iput-object v0, v5, Lʾˈ/ʼˎ;->ˆʾ:Lﾞﹶ/ʽ;

    sget-object v0, Lʾˈ/יـ;->ⁱˊ:Lʾˈ/ʼᐧ;

    invoke-static {v0}, Lﾞﹶ/ﹳٴ;->ﹳٴ(Lﾞﹶ/ⁱˊ;)Lﾞﹶ/ʽ;

    move-result-object v0

    iput-object v0, v5, Lʾˈ/ʼˎ;->ٴﹶ:Lﾞﹶ/ʽ;

    iget-object v1, v5, Lʾˈ/ʼˎ;->ˈ:Lﾞﹶ/ʽ;

    new-instance v2, Lʾˈ/ˈⁱ;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Lʾˈ/ˈⁱ;-><init>(Lﾞﹶ/ʽ;Lﾞﹶ/ʽ;I)V

    invoke-static {v2}, Lﾞﹶ/ﹳٴ;->ﹳٴ(Lﾞﹶ/ⁱˊ;)Lﾞﹶ/ʽ;

    move-result-object v0

    iput-object v0, v5, Lʾˈ/ʼˎ;->ﾞʻ:Lﾞﹶ/ʽ;

    invoke-static {p0}, Lʾﹶ/ʽ;->ⁱˊ(Ljava/lang/Object;)Lʾﹶ/ʽ;

    move-result-object p0

    new-instance v0, Lﹳי/ʽ;

    invoke-direct {v0, p0}, Lﹳי/ʽ;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lﾞﹶ/ﹳٴ;->ﹳٴ(Lﾞﹶ/ⁱˊ;)Lﾞﹶ/ʽ;

    move-result-object v10

    iget-object v7, v5, Lʾˈ/ʼˎ;->ﹳٴ:Lʾﹶ/ʽ;

    iget-object v8, v5, Lʾˈ/ʼˎ;->ˑﹳ:Lʾﹶ/ʽ;

    iget-object v9, v5, Lʾˈ/ʼˎ;->ˆʾ:Lﾞﹶ/ʽ;

    iget-object v11, v5, Lʾˈ/ʼˎ;->ʼˎ:Lʾﹶ/ʽ;

    new-instance v6, Landroidx/leanback/widget/ʻٴ;

    const/4 v12, 0x3

    invoke-direct/range {v6 .. v12}, Landroidx/leanback/widget/ʻٴ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v6}, Lﾞﹶ/ﹳٴ;->ﹳٴ(Lﾞﹶ/ⁱˊ;)Lﾞﹶ/ʽ;

    move-result-object p0

    iput-object p0, v5, Lʾˈ/ʼˎ;->ˉʿ:Lﾞﹶ/ʽ;

    iget-object p0, v5, Lʾˈ/ʼˎ;->ﾞʻ:Lﾞﹶ/ʽ;

    new-instance v0, Lʾˈ/ᵎˊ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lʾˈ/ᵎˊ;-><init>(Lᵎˋ/ﹳٴ;I)V

    invoke-static {v0}, Lﾞﹶ/ﹳٴ;->ﹳٴ(Lﾞﹶ/ⁱˊ;)Lﾞﹶ/ʽ;

    move-result-object p0

    iget-object v0, v5, Lʾˈ/ʼˎ;->ⁱˊ:Lʾﹶ/ʽ;

    iget-object v1, v5, Lʾˈ/ʼˎ;->ᵎﹶ:Lʾﹶ/ʽ;

    new-instance v2, Lˑי/ʽ;

    invoke-direct {v2, v0, v1, p0}, Lˑי/ʽ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, Lﾞﹶ/ﹳٴ;->ﹳٴ(Lﾞﹶ/ⁱˊ;)Lﾞﹶ/ʽ;

    move-result-object p0

    iput-object p0, v5, Lʾˈ/ʼˎ;->ᵔʾ:Lﾞﹶ/ʽ;

    iget-object p0, v5, Lʾˈ/ʼˎ;->ⁱˊ:Lʾﹶ/ʽ;

    iget-object v0, v5, Lʾˈ/ʼˎ;->ٴﹶ:Lﾞﹶ/ʽ;

    new-instance v1, Lʾˈ/ˈٴ;

    invoke-direct {v1, p0, v0}, Lʾˈ/ˈٴ;-><init>(Lʾﹶ/ʽ;Lﾞﹶ/ʽ;)V

    invoke-static {v1}, Lﾞﹶ/ﹳٴ;->ﹳٴ(Lﾞﹶ/ⁱˊ;)Lﾞﹶ/ʽ;

    move-result-object v12

    iget-object v7, v5, Lʾˈ/ʼˎ;->ˆʾ:Lﾞﹶ/ʽ;

    iget-object v8, v5, Lʾˈ/ʼˎ;->ﾞʻ:Lﾞﹶ/ʽ;

    iget-object v9, v5, Lʾˈ/ʼˎ;->ˉʿ:Lﾞﹶ/ʽ;

    iget-object v10, v5, Lʾˈ/ʼˎ;->ˈ:Lﾞﹶ/ʽ;

    iget-object v11, v5, Lʾˈ/ʼˎ;->ᵔʾ:Lﾞﹶ/ʽ;

    iget-object v13, v5, Lʾˈ/ʼˎ;->ʼˎ:Lʾﹶ/ʽ;

    new-instance v6, Lˋٴ/ʽ;

    const/4 v14, 0x1

    invoke-direct/range {v6 .. v14}, Lˋٴ/ʽ;-><init>(Lᵎˋ/ﹳٴ;Lᵎˋ/ﹳٴ;Lᵎˋ/ﹳٴ;Lᵎˋ/ﹳٴ;Lᵎˋ/ﹳٴ;Lᵎˋ/ﹳٴ;Lᵎˋ/ﹳٴ;I)V

    invoke-static {v6}, Lﾞﹶ/ﹳٴ;->ﹳٴ(Lﾞﹶ/ⁱˊ;)Lﾞﹶ/ʽ;

    move-result-object p0

    iput-object p0, v5, Lʾˈ/ʼˎ;->ˉˆ:Lﾞﹶ/ʽ;

    new-instance v0, Landroidx/leanback/widget/ˉˆ;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p0}, Landroidx/leanback/widget/ˉˆ;-><init>(ILjava/lang/Object;)V

    invoke-static {v0}, Lﾞﹶ/ﹳٴ;->ﹳٴ(Lﾞﹶ/ⁱˊ;)Lﾞﹶ/ʽ;

    move-result-object v10

    iget-object v7, v5, Lʾˈ/ʼˎ;->ﹳٴ:Lʾﹶ/ʽ;

    iget-object v8, v5, Lʾˈ/ʼˎ;->ˆʾ:Lﾞﹶ/ʽ;

    iget-object v9, v5, Lʾˈ/ʼˎ;->ʼˎ:Lʾﹶ/ʽ;

    new-instance v6, Lˏˆ/ﹳٴ;

    const/16 v11, 0x8

    invoke-direct/range {v6 .. v11}, Lˏˆ/ﹳٴ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v6}, Lﾞﹶ/ﹳٴ;->ﹳٴ(Lﾞﹶ/ⁱˊ;)Lﾞﹶ/ʽ;

    move-result-object p0

    iput-object p0, v5, Lʾˈ/ʼˎ;->ʼᐧ:Lﾞﹶ/ʽ;

    return-object v5
.end method

.method public static synthetic ⁱˊ(Landroidx/leanback/widget/ʻٴ;)Lʾˈ/ᵔʾ;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->getComponents$lambda$0(Lˏ/ʽ;)Lʾˈ/ᵔʾ;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic ﹳٴ(Landroidx/leanback/widget/ʻٴ;)Lʾˈ/ᵔﹳ;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->getComponents$lambda$1(Lˏ/ʽ;)Lʾˈ/ᵔﹳ;

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

    const-class v0, Lʾˈ/ᵔʾ;

    invoke-static {v0}, Lˏ/ⁱˊ;->ﹳٴ(Ljava/lang/Class;)Lˏ/ﹳٴ;

    move-result-object v0

    const-string v1, "fire-sessions"

    iput-object v1, v0, Lˏ/ﹳٴ;->ﹳٴ:Ljava/lang/String;

    sget-object v2, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseSessionsComponent:Lˏ/ˉˆ;

    invoke-static {v2}, Lˏ/ʼˎ;->ⁱˊ(Lˏ/ˉˆ;)Lˏ/ʼˎ;

    move-result-object v2

    invoke-virtual {v0, v2}, Lˏ/ﹳٴ;->ﹳٴ(Lˏ/ʼˎ;)V

    new-instance v2, Lʾˈ/ˏי;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lʾˈ/ˏי;-><init>(I)V

    iput-object v2, v0, Lˏ/ﹳٴ;->ﾞᴵ:Lˏ/ˈ;

    invoke-virtual {v0}, Lˏ/ﹳٴ;->ʽ()V

    invoke-virtual {v0}, Lˏ/ﹳٴ;->ⁱˊ()Lˏ/ⁱˊ;

    move-result-object v0

    const-class v2, Lʾˈ/ᵔﹳ;

    invoke-static {v2}, Lˏ/ⁱˊ;->ﹳٴ(Ljava/lang/Class;)Lˏ/ﹳٴ;

    move-result-object v2

    const-string v4, "fire-sessions-component"

    iput-object v4, v2, Lˏ/ﹳٴ;->ﹳٴ:Ljava/lang/String;

    sget-object v4, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->appContext:Lˏ/ˉˆ;

    invoke-static {v4}, Lˏ/ʼˎ;->ⁱˊ(Lˏ/ˉˆ;)Lˏ/ʼˎ;

    move-result-object v4

    invoke-virtual {v2, v4}, Lˏ/ﹳٴ;->ﹳٴ(Lˏ/ʼˎ;)V

    sget-object v4, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->backgroundDispatcher:Lˏ/ˉˆ;

    invoke-static {v4}, Lˏ/ʼˎ;->ⁱˊ(Lˏ/ˉˆ;)Lˏ/ʼˎ;

    move-result-object v4

    invoke-virtual {v2, v4}, Lˏ/ﹳٴ;->ﹳٴ(Lˏ/ʼˎ;)V

    sget-object v4, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->blockingDispatcher:Lˏ/ˉˆ;

    invoke-static {v4}, Lˏ/ʼˎ;->ⁱˊ(Lˏ/ˉˆ;)Lˏ/ʼˎ;

    move-result-object v4

    invoke-virtual {v2, v4}, Lˏ/ﹳٴ;->ﹳٴ(Lˏ/ʼˎ;)V

    sget-object v4, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseApp:Lˏ/ˉˆ;

    invoke-static {v4}, Lˏ/ʼˎ;->ⁱˊ(Lˏ/ˉˆ;)Lˏ/ʼˎ;

    move-result-object v4

    invoke-virtual {v2, v4}, Lˏ/ﹳٴ;->ﹳٴ(Lˏ/ʼˎ;)V

    sget-object v4, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseInstallationsApi:Lˏ/ˉˆ;

    invoke-static {v4}, Lˏ/ʼˎ;->ⁱˊ(Lˏ/ˉˆ;)Lˏ/ʼˎ;

    move-result-object v4

    invoke-virtual {v2, v4}, Lˏ/ﹳٴ;->ﹳٴ(Lˏ/ʼˎ;)V

    sget-object v4, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->transportFactory:Lˏ/ˉˆ;

    new-instance v5, Lˏ/ʼˎ;

    const/4 v6, 0x1

    invoke-direct {v5, v4, v6, v6}, Lˏ/ʼˎ;-><init>(Lˏ/ˉˆ;II)V

    invoke-virtual {v2, v5}, Lˏ/ﹳٴ;->ﹳٴ(Lˏ/ʼˎ;)V

    new-instance v4, Lʾˈ/ˏי;

    invoke-direct {v4, v6}, Lʾˈ/ˏי;-><init>(I)V

    iput-object v4, v2, Lˏ/ﹳٴ;->ﾞᴵ:Lˏ/ˈ;

    invoke-virtual {v2}, Lˏ/ﹳٴ;->ⁱˊ()Lˏ/ⁱˊ;

    move-result-object v2

    const-string v4, "3.0.0"

    invoke-static {v1, v4}, Lﹳˋ/ٴﹶ;->ʼˎ(Ljava/lang/String;Ljava/lang/String;)Lˏ/ⁱˊ;

    move-result-object v1

    const/4 v4, 0x3

    new-array v4, v4, [Lˏ/ⁱˊ;

    aput-object v0, v4, v3

    aput-object v2, v4, v6

    const/4 v0, 0x2

    aput-object v1, v4, v0

    invoke-static {v4}, Lﹶˈ/ٴﹶ;->ʿ([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
