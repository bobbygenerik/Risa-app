.class public abstract Lٴﹳ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﹳٴ:Lٴﹳ/ﹳٴ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lٴﹳ/ﹳٴ;->ﹳٴ:Lٴﹳ/ﹳٴ;

    sput-object v0, Lٴﹳ/ⁱˊ;->ﹳٴ:Lٴﹳ/ﹳٴ;

    return-void
.end method

.method public static final ʽ(Lˑʼ/ᴵᵔ;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroidx/fragment/app/strictmode/FragmentReuseViolation;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempting to reuse fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with previous ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroidx/fragment/app/strictmode/Violation;-><init>(Lˑʼ/ᴵᵔ;Ljava/lang/String;)V

    invoke-static {v0}, Lٴﹳ/ⁱˊ;->ⁱˊ(Landroidx/fragment/app/strictmode/Violation;)V

    invoke-static {p0}, Lٴﹳ/ⁱˊ;->ﹳٴ(Lˑʼ/ᴵᵔ;)Lٴﹳ/ﹳٴ;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public static ⁱˊ(Landroidx/fragment/app/strictmode/Violation;)V
    .locals 2

    .prologue
    const/4 v0, 0x3

    invoke-static {v0}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/strictmode/Violation;->ʾˋ:Lˑʼ/ᴵᵔ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StrictMode violation in "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    nop

    :cond_0
    return-void
.end method

.method public static ﹳٴ(Lˑʼ/ᴵᵔ;)Lٴﹳ/ﹳٴ;
    .locals 1

    .prologue
    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ˈˏ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ᵎᵔ()Lˑʼ/ʿ;

    :cond_0
    iget-object p0, p0, Lˑʼ/ᴵᵔ;->ᴵˑ:Lˑʼ/ᴵᵔ;

    goto :goto_0

    :cond_1
    sget-object p0, Lٴﹳ/ⁱˊ;->ﹳٴ:Lٴﹳ/ﹳٴ;

    return-object p0
.end method
