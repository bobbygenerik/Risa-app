.class public final Lᵎˈ/ˉˆ;
.super Lᴵʾ/ʽ;
.source "SourceFile"


# instance fields
.field public ˈٴ:Lˊʼ/ˏי;

.field public ˊʻ:I

.field public synthetic ᴵᵔ:Ljava/lang/Object;


# virtual methods
.method public final ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lᵎˈ/ˉˆ;->ᴵᵔ:Ljava/lang/Object;

    iget p1, p0, Lᵎˈ/ˉˆ;->ˊʻ:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lᵎˈ/ˉˆ;->ˊʻ:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p0}, Lᵎˈ/ˈٴ;->ʽ(Lᵎˈ/ᵎﹶ;Lᵎˈ/ᵔᵢ;Lᴵʾ/ʽ;)Ljava/io/Serializable;

    move-result-object p1

    return-object p1
.end method
