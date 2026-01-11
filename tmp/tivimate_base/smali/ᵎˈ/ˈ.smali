.class public final Lᵎˈ/ˈ;
.super Lᴵʾ/ʽ;
.source "SourceFile"


# instance fields
.field public synthetic ˈٴ:Ljava/lang/Object;

.field public ˊʻ:I

.field public final synthetic ᴵᵔ:Lᵎˈ/ˑﹳ;


# direct methods
.method public constructor <init>(Lᵎˈ/ˑﹳ;Lˈי/ˈ;)V
    .locals 0

    iput-object p1, p0, Lᵎˈ/ˈ;->ᴵᵔ:Lᵎˈ/ˑﹳ;

    invoke-direct {p0, p2}, Lᴵʾ/ʽ;-><init>(Lˈי/ˈ;)V

    return-void
.end method


# virtual methods
.method public final ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lᵎˈ/ˈ;->ˈٴ:Ljava/lang/Object;

    iget p1, p0, Lᵎˈ/ˈ;->ˊʻ:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lᵎˈ/ˈ;->ˊʻ:I

    iget-object p1, p0, Lᵎˈ/ˈ;->ᴵᵔ:Lᵎˈ/ˑﹳ;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lᵎˈ/ˑﹳ;->ﹳٴ(Ljava/lang/Object;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
