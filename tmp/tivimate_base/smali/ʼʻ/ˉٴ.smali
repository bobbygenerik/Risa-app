.class public final Lʼʻ/ˉٴ;
.super Lʼʻ/ᵎⁱ;
.source "SourceFile"


# instance fields
.field public final transient ʽʽ:I

.field public final transient ˈٴ:I

.field public final synthetic ᴵᵔ:Lʼʻ/ᵎⁱ;


# direct methods
.method public constructor <init>(Lʼʻ/ᵎⁱ;II)V
    .locals 0

    iput-object p1, p0, Lʼʻ/ˉٴ;->ᴵᵔ:Lʼʻ/ᵎⁱ;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput p2, p0, Lʼʻ/ˉٴ;->ʽʽ:I

    iput p3, p0, Lʼʻ/ˉٴ;->ˈٴ:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lʼʻ/ˉٴ;->ˈٴ:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/י;->ᵎﹶ(II)V

    iget v0, p0, Lʼʻ/ˉٴ;->ʽʽ:I

    add-int/2addr p1, v0

    iget-object v0, p0, Lʼʻ/ˉٴ;->ᴵᵔ:Lʼʻ/ᵎⁱ;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lʼʻ/ᵎⁱ;->ˉʿ(I)Lʼʻ/ٴᵢ;

    move-result-object v0

    return-object v0
.end method

.method public final listIterator()Ljava/util/ListIterator;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lʼʻ/ᵎⁱ;->ˉʿ(I)Lʼʻ/ٴᵢ;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 0

    invoke-virtual {p0, p1}, Lʼʻ/ᵎⁱ;->ˉʿ(I)Lʼʻ/ٴᵢ;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lʼʻ/ˉٴ;->ˈٴ:I

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lʼʻ/ˉٴ;->ʽﹳ(II)Lʼʻ/ᵎⁱ;

    move-result-object p1

    return-object p1
.end method

.method public final ʽﹳ(II)Lʼʻ/ᵎⁱ;
    .locals 1

    iget v0, p0, Lʼʻ/ˉٴ;->ˈٴ:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/play_billing/י;->ˆʾ(III)V

    iget v0, p0, Lʼʻ/ˉٴ;->ʽʽ:I

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    iget-object v0, p0, Lʼʻ/ˉٴ;->ᴵᵔ:Lʼʻ/ᵎⁱ;

    invoke-virtual {v0, p1, p2}, Lʼʻ/ᵎⁱ;->ʽﹳ(II)Lʼʻ/ᵎⁱ;

    move-result-object p1

    return-object p1
.end method

.method public final ˈ()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lʼʻ/ˉٴ;->ᴵᵔ:Lʼʻ/ᵎⁱ;

    invoke-virtual {v0}, Lʼʻ/ˈٴ;->ˈ()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final ˑﹳ()I
    .locals 2

    iget-object v0, p0, Lʼʻ/ˉٴ;->ᴵᵔ:Lʼʻ/ᵎⁱ;

    invoke-virtual {v0}, Lʼʻ/ˈٴ;->ﾞᴵ()I

    move-result v0

    iget v1, p0, Lʼʻ/ˉٴ;->ʽʽ:I

    add-int/2addr v0, v1

    iget v1, p0, Lʼʻ/ˉٴ;->ˈٴ:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final ᵎﹶ()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final ﾞᴵ()I
    .locals 2

    iget-object v0, p0, Lʼʻ/ˉٴ;->ᴵᵔ:Lʼʻ/ᵎⁱ;

    invoke-virtual {v0}, Lʼʻ/ˈٴ;->ﾞᴵ()I

    move-result v0

    iget v1, p0, Lʼʻ/ˉٴ;->ʽʽ:I

    add-int/2addr v0, v1

    return v0
.end method
