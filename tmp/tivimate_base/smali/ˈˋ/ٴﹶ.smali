.class public final Lˈˋ/ٴﹶ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʿˑ/ʽ;


# static fields
.field public static final ʽ:Lʿˑ/ⁱˊ;

.field public static final ˈ:Lʿˑ/ⁱˊ;

.field public static final ˑﹳ:Lʿˑ/ⁱˊ;

.field public static final ᵎﹶ:Lʿˑ/ⁱˊ;

.field public static final ᵔᵢ:Lʿˑ/ⁱˊ;

.field public static final ⁱˊ:Lʿˑ/ⁱˊ;

.field public static final ﹳٴ:Lˈˋ/ٴﹶ;

.field public static final ﾞᴵ:Lʿˑ/ⁱˊ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lˈˋ/ٴﹶ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lˈˋ/ٴﹶ;->ﹳٴ:Lˈˋ/ٴﹶ;

    const-string v0, "execution"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/ٴﹶ;->ⁱˊ:Lʿˑ/ⁱˊ;

    const-string v0, "customAttributes"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/ٴﹶ;->ʽ:Lʿˑ/ⁱˊ;

    const-string v0, "internalKeys"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/ٴﹶ;->ˈ:Lʿˑ/ⁱˊ;

    const-string v0, "background"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/ٴﹶ;->ˑﹳ:Lʿˑ/ⁱˊ;

    const-string v0, "currentProcessDetails"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/ٴﹶ;->ﾞᴵ:Lʿˑ/ⁱˊ;

    const-string v0, "appProcessDetails"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/ٴﹶ;->ᵎﹶ:Lʿˑ/ⁱˊ;

    const-string v0, "uiOrientation"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/ٴﹶ;->ᵔᵢ:Lʿˑ/ⁱˊ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lˈˋ/ـˊ;

    check-cast p2, Lʿˑ/ˈ;

    check-cast p1, Lˈˋ/ˋᵔ;

    iget-object v0, p1, Lˈˋ/ˋᵔ;->ﹳٴ:Lˈˋ/ˊˋ;

    sget-object v1, Lˈˋ/ٴﹶ;->ⁱˊ:Lʿˑ/ⁱˊ;

    invoke-interface {p2, v1, v0}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object v0, Lˈˋ/ٴﹶ;->ʽ:Lʿˑ/ⁱˊ;

    iget-object v1, p1, Lˈˋ/ˋᵔ;->ⁱˊ:Ljava/util/List;

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object v0, Lˈˋ/ٴﹶ;->ˈ:Lʿˑ/ⁱˊ;

    iget-object v1, p1, Lˈˋ/ˋᵔ;->ʽ:Ljava/util/List;

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object v0, Lˈˋ/ٴﹶ;->ˑﹳ:Lʿˑ/ⁱˊ;

    iget-object v1, p1, Lˈˋ/ˋᵔ;->ˈ:Ljava/lang/Boolean;

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object v0, Lˈˋ/ٴﹶ;->ﾞᴵ:Lʿˑ/ⁱˊ;

    iget-object v1, p1, Lˈˋ/ˋᵔ;->ˑﹳ:Lˈˋ/ʻᴵ;

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object v0, Lˈˋ/ٴﹶ;->ᵎﹶ:Lʿˑ/ⁱˊ;

    iget-object v1, p1, Lˈˋ/ˋᵔ;->ﾞᴵ:Ljava/util/List;

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object v0, Lˈˋ/ٴﹶ;->ᵔᵢ:Lʿˑ/ⁱˊ;

    iget p1, p1, Lˈˋ/ˋᵔ;->ᵎﹶ:I

    invoke-interface {p2, v0, p1}, Lʿˑ/ˈ;->ﹳٴ(Lʿˑ/ⁱˊ;I)Lʿˑ/ˈ;

    return-void
.end method
