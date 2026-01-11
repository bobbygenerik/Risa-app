.class public final Lᐧٴ/ᵔᵢ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʿˑ/ʽ;


# static fields
.field public static final ⁱˊ:Lʿˑ/ⁱˊ;

.field public static final ﹳٴ:Lᐧٴ/ᵔᵢ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lᐧٴ/ᵔᵢ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lᐧٴ/ᵔᵢ;->ﹳٴ:Lᐧٴ/ᵔᵢ;

    const-string v0, "prequest"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lᐧٴ/ᵔᵢ;->ⁱˊ:Lʿˑ/ⁱˊ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lᐧٴ/ˈٴ;

    check-cast p2, Lʿˑ/ˈ;

    check-cast p1, Lᐧٴ/ﹳᐧ;

    iget-object p1, p1, Lᐧٴ/ﹳᐧ;->ﹳٴ:Lᐧٴ/ᵔﹳ;

    sget-object v0, Lᐧٴ/ᵔᵢ;->ⁱˊ:Lʿˑ/ⁱˊ;

    invoke-interface {p2, v0, p1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    return-void
.end method
