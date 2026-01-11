.class public final Lˈˋ/ᵔʾ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʿˑ/ʽ;


# static fields
.field public static final ʽ:Lʿˑ/ⁱˊ;

.field public static final ˈ:Lʿˑ/ⁱˊ;

.field public static final ˑﹳ:Lʿˑ/ⁱˊ;

.field public static final ⁱˊ:Lʿˑ/ⁱˊ;

.field public static final ﹳٴ:Lˈˋ/ᵔʾ;

.field public static final ﾞᴵ:Lʿˑ/ⁱˊ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lˈˋ/ᵔʾ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lˈˋ/ᵔʾ;->ﹳٴ:Lˈˋ/ᵔʾ;

    const-string v0, "type"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/ᵔʾ;->ⁱˊ:Lʿˑ/ⁱˊ;

    const-string v0, "reason"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/ᵔʾ;->ʽ:Lʿˑ/ⁱˊ;

    const-string v0, "frames"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/ᵔʾ;->ˈ:Lʿˑ/ⁱˊ;

    const-string v0, "causedBy"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/ᵔʾ;->ˑﹳ:Lʿˑ/ⁱˊ;

    const-string v0, "overflowCount"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/ᵔʾ;->ﾞᴵ:Lʿˑ/ⁱˊ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lˈˋ/יﹳ;

    check-cast p2, Lʿˑ/ˈ;

    check-cast p1, Lˈˋ/ـˏ;

    iget-object v0, p1, Lˈˋ/ـˏ;->ﹳٴ:Ljava/lang/String;

    sget-object v1, Lˈˋ/ᵔʾ;->ⁱˊ:Lʿˑ/ⁱˊ;

    invoke-interface {p2, v1, v0}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object v0, Lˈˋ/ᵔʾ;->ʽ:Lʿˑ/ⁱˊ;

    iget-object v1, p1, Lˈˋ/ـˏ;->ⁱˊ:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object v0, Lˈˋ/ᵔʾ;->ˈ:Lʿˑ/ⁱˊ;

    iget-object v1, p1, Lˈˋ/ـˏ;->ʽ:Ljava/util/List;

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object v0, Lˈˋ/ᵔʾ;->ˑﹳ:Lʿˑ/ⁱˊ;

    iget-object v1, p1, Lˈˋ/ـˏ;->ˈ:Lˈˋ/יﹳ;

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object v0, Lˈˋ/ᵔʾ;->ﾞᴵ:Lʿˑ/ⁱˊ;

    iget p1, p1, Lˈˋ/ـˏ;->ˑﹳ:I

    invoke-interface {p2, v0, p1}, Lʿˑ/ˈ;->ﹳٴ(Lʿˑ/ⁱˊ;I)Lʿˑ/ˈ;

    return-void
.end method
