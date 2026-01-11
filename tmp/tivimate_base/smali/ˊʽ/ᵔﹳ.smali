.class public Lˊʽ/ᵔﹳ;
.super Lᴵי/ﹳٴ;
.source "SourceFile"

# interfaces
.implements Lᴵʾ/ˈ;


# instance fields
.field public final ˈٴ:Lˈי/ˈ;


# direct methods
.method public constructor <init>(Lˈי/ˈ;Lˈי/ᵔᵢ;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0, v0}, Lᴵי/ﹳٴ;-><init>(Lˈי/ᵔᵢ;ZZ)V

    iput-object p1, p0, Lˊʽ/ᵔﹳ;->ˈٴ:Lˈי/ˈ;

    return-void
.end method


# virtual methods
.method public final ˈ()Lᴵʾ/ˈ;
    .locals 2

    .prologue
    iget-object v0, p0, Lˊʽ/ᵔﹳ;->ˈٴ:Lˈי/ˈ;

    instance-of v1, v0, Lᴵʾ/ˈ;

    if-eqz v1, :cond_0

    check-cast v0, Lᴵʾ/ˈ;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public ˑﹳ(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lˊʽ/ᵔﹳ;->ˈٴ:Lˈי/ˈ;

    invoke-static {v0}, Lˉᵎ/ⁱˊ;->ˈٴ(Lˈי/ˈ;)Lˈי/ˈ;

    move-result-object v0

    invoke-static {p1}, Lᴵי/ʾᵎ;->ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v0}, Lˊʽ/ⁱˊ;->ᵔᵢ(Ljava/lang/Object;Lˈי/ˈ;)V

    return-void
.end method

.method public ٴﹶ(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lˊʽ/ᵔﹳ;->ˈٴ:Lˈי/ˈ;

    invoke-static {p1}, Lᴵי/ʾᵎ;->ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lˈי/ˈ;->ᵔᵢ(Ljava/lang/Object;)V

    return-void
.end method

.method public final ᵔٴ()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public ﹳﹳ()V
    .locals 0

    return-void
.end method
