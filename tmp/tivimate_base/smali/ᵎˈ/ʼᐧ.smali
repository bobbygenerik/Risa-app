.class public final Lᵎˈ/ʼᐧ;
.super Lᴵʾ/ʽ;
.source "SourceFile"


# instance fields
.field public ˈٴ:Lᵎˈ/ˑﹳ;

.field public final synthetic ˊʻ:Lᵎˈ/ˑﹳ;

.field public ٴᵢ:I

.field public synthetic ᴵᵔ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lᵎˈ/ˑﹳ;Lˈי/ˈ;)V
    .locals 0

    iput-object p1, p0, Lᵎˈ/ʼᐧ;->ˊʻ:Lᵎˈ/ˑﹳ;

    invoke-direct {p0, p2}, Lᴵʾ/ʽ;-><init>(Lˈי/ˈ;)V

    return-void
.end method


# virtual methods
.method public final ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lᵎˈ/ʼᐧ;->ᴵᵔ:Ljava/lang/Object;

    iget p1, p0, Lᵎˈ/ʼᐧ;->ٴᵢ:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lᵎˈ/ʼᐧ;->ٴᵢ:I

    iget-object p1, p0, Lᵎˈ/ʼᐧ;->ˊʻ:Lᵎˈ/ˑﹳ;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lᵎˈ/ˑﹳ;->ﹳٴ(Ljava/lang/Object;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
