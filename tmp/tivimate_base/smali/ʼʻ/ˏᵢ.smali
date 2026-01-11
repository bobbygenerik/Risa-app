.class public final Lʼʻ/ˏᵢ;
.super Lʼʻ/ᵎⁱ;
.source "SourceFile"


# instance fields
.field public final transient ʽʽ:[Ljava/lang/Object;

.field public final transient ˈٴ:I

.field public final transient ᴵᵔ:I


# direct methods
.method public constructor <init>([Ljava/lang/Object;II)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, Lʼʻ/ˏᵢ;->ʽʽ:[Ljava/lang/Object;

    iput p2, p0, Lʼʻ/ˏᵢ;->ˈٴ:I

    iput p3, p0, Lʼʻ/ˏᵢ;->ᴵᵔ:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lʼʻ/ˏᵢ;->ᴵᵔ:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/י;->ᵎﹶ(II)V

    mul-int/lit8 p1, p1, 0x2

    iget v0, p0, Lʼʻ/ˏᵢ;->ˈٴ:I

    add-int/2addr p1, v0

    iget-object v0, p0, Lʼʻ/ˏᵢ;->ʽʽ:[Ljava/lang/Object;

    aget-object p1, v0, p1

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lʼʻ/ˏᵢ;->ᴵᵔ:I

    return v0
.end method

.method public final ᵎﹶ()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
