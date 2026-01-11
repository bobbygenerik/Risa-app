.class public final Lʼˋ/ʼˎ;
.super Lᴵʾ/ʽ;
.source "SourceFile"


# instance fields
.field public synthetic ˈٴ:Ljava/lang/Object;

.field public ˊʻ:Lᵎˈ/ᵔᵢ;

.field public final synthetic ٴᵢ:Lʼˋ/ˆʾ;

.field public ᴵᵔ:I


# direct methods
.method public constructor <init>(Lʼˋ/ˆʾ;Lˈי/ˈ;)V
    .locals 0

    iput-object p1, p0, Lʼˋ/ʼˎ;->ٴᵢ:Lʼˋ/ˆʾ;

    invoke-direct {p0, p2}, Lᴵʾ/ʽ;-><init>(Lˈי/ˈ;)V

    return-void
.end method


# virtual methods
.method public final ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lʼˋ/ʼˎ;->ˈٴ:Ljava/lang/Object;

    iget p1, p0, Lʼˋ/ʼˎ;->ᴵᵔ:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lʼˋ/ʼˎ;->ᴵᵔ:I

    iget-object p1, p0, Lʼˋ/ʼˎ;->ٴᵢ:Lʼˋ/ˆʾ;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lʼˋ/ˆʾ;->ﹳٴ(Ljava/lang/Object;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
