.class public final Lʾˈ/ﾞᴵ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʿˑ/ʽ;


# static fields
.field public static final ʽ:Lʿˑ/ⁱˊ;

.field public static final ˈ:Lʿˑ/ⁱˊ;

.field public static final ˑﹳ:Lʿˑ/ⁱˊ;

.field public static final ⁱˊ:Lʿˑ/ⁱˊ;

.field public static final ﹳٴ:Lʾˈ/ﾞᴵ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lʾˈ/ﾞᴵ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lʾˈ/ﾞᴵ;->ﹳٴ:Lʾˈ/ﾞᴵ;

    const-string v0, "processName"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lʾˈ/ﾞᴵ;->ⁱˊ:Lʿˑ/ⁱˊ;

    const-string v0, "pid"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lʾˈ/ﾞᴵ;->ʽ:Lʿˑ/ⁱˊ;

    const-string v0, "importance"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lʾˈ/ﾞᴵ;->ˈ:Lʿˑ/ⁱˊ;

    const-string v0, "defaultProcess"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lʾˈ/ﾞᴵ;->ˑﹳ:Lʿˑ/ⁱˊ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lʾˈ/ᴵᵔ;

    check-cast p2, Lʿˑ/ˈ;

    sget-object v0, Lʾˈ/ﾞᴵ;->ⁱˊ:Lʿˑ/ⁱˊ;

    iget-object v1, p1, Lʾˈ/ᴵᵔ;->ﹳٴ:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object v0, Lʾˈ/ﾞᴵ;->ʽ:Lʿˑ/ⁱˊ;

    iget v1, p1, Lʾˈ/ᴵᵔ;->ⁱˊ:I

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﹳٴ(Lʿˑ/ⁱˊ;I)Lʿˑ/ˈ;

    sget-object v0, Lʾˈ/ﾞᴵ;->ˈ:Lʿˑ/ⁱˊ;

    iget v1, p1, Lʾˈ/ᴵᵔ;->ʽ:I

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﹳٴ(Lʿˑ/ⁱˊ;I)Lʿˑ/ˈ;

    sget-object v0, Lʾˈ/ﾞᴵ;->ˑﹳ:Lʿˑ/ⁱˊ;

    iget-boolean p1, p1, Lʾˈ/ᴵᵔ;->ˈ:Z

    invoke-interface {p2, v0, p1}, Lʿˑ/ˈ;->ᵎﹶ(Lʿˑ/ⁱˊ;Z)Lʿˑ/ˈ;

    return-void
.end method
