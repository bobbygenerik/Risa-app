.class public final Lˈˋ/ʼʼ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʿˑ/ʽ;


# static fields
.field public static final ʽ:Lʿˑ/ⁱˊ;

.field public static final ˈ:Lʿˑ/ⁱˊ;

.field public static final ˑﹳ:Lʿˑ/ⁱˊ;

.field public static final ⁱˊ:Lʿˑ/ⁱˊ;

.field public static final ﹳٴ:Lˈˋ/ʼʼ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lˈˋ/ʼʼ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lˈˋ/ʼʼ;->ﹳٴ:Lˈˋ/ʼʼ;

    const-string v0, "platform"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/ʼʼ;->ⁱˊ:Lʿˑ/ⁱˊ;

    const-string v0, "version"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/ʼʼ;->ʽ:Lʿˑ/ⁱˊ;

    const-string v0, "buildVersion"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/ʼʼ;->ˈ:Lʿˑ/ⁱˊ;

    const-string v0, "jailbroken"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/ʼʼ;->ˑﹳ:Lʿˑ/ⁱˊ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lˈˋ/ـᵢ;

    check-cast p2, Lʿˑ/ˈ;

    check-cast p1, Lˈˋ/ˈˏ;

    iget v0, p1, Lˈˋ/ˈˏ;->ﹳٴ:I

    sget-object v1, Lˈˋ/ʼʼ;->ⁱˊ:Lʿˑ/ⁱˊ;

    invoke-interface {p2, v1, v0}, Lʿˑ/ˈ;->ﹳٴ(Lʿˑ/ⁱˊ;I)Lʿˑ/ˈ;

    sget-object v0, Lˈˋ/ʼʼ;->ʽ:Lʿˑ/ⁱˊ;

    iget-object v1, p1, Lˈˋ/ˈˏ;->ⁱˊ:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object v0, Lˈˋ/ʼʼ;->ˈ:Lʿˑ/ⁱˊ;

    iget-object v1, p1, Lˈˋ/ˈˏ;->ʽ:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object v0, Lˈˋ/ʼʼ;->ˑﹳ:Lʿˑ/ⁱˊ;

    iget-boolean p1, p1, Lˈˋ/ˈˏ;->ˈ:Z

    invoke-interface {p2, v0, p1}, Lʿˑ/ˈ;->ᵎﹶ(Lʿˑ/ⁱˊ;Z)Lʿˑ/ˈ;

    return-void
.end method
