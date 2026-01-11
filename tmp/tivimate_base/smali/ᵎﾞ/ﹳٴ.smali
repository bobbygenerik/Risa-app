.class public final Lᵎﾞ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic ⁱˊ:Lʽʿ/יـ;

.field public final synthetic ﹳٴ:Lᵎﾞ/ⁱˊ;


# direct methods
.method public constructor <init>(Lᵎﾞ/ⁱˊ;Lʽʿ/יـ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᵎﾞ/ﹳٴ;->ﹳٴ:Lᵎﾞ/ⁱˊ;

    iput-object p2, p0, Lᵎﾞ/ﹳٴ;->ⁱˊ:Lʽʿ/יـ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Ljava/lang/Object;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lᵎﾞ/ﹳٴ;->ﹳٴ:Lᵎﾞ/ⁱˊ;

    invoke-virtual {v0, p1}, Lᵎﾞ/ⁱˊ;->ˑﹳ(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lⁱᵎ/ⁱˊ;

    invoke-virtual {v0}, Lᵎﾞ/ⁱˊ;->ˈ()I

    move-result v0

    invoke-direct {p1, v0}, Lⁱᵎ/ⁱˊ;-><init>(I)V

    goto :goto_0

    :cond_0
    sget-object p1, Lⁱᵎ/ﹳٴ;->ﹳٴ:Lⁱᵎ/ﹳٴ;

    :goto_0
    iget-object v0, p0, Lᵎﾞ/ﹳٴ;->ⁱˊ:Lʽʿ/יـ;

    check-cast v0, Lʽʿ/ﹳᐧ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1}, Lʽʿ/ٴﹶ;->ⁱˊ(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
