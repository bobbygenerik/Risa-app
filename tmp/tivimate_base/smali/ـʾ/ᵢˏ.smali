.class public final Lـʾ/ᵢˏ;
.super Lᴵʾ/ʽ;
.source "SourceFile"


# instance fields
.field public synthetic ˈٴ:Ljava/lang/Object;

.field public ˊʻ:I

.field public final synthetic ᴵᵔ:Lـʾ/ʾˋ;


# direct methods
.method public constructor <init>(Lـʾ/ʾˋ;Lᴵʾ/ʽ;)V
    .locals 0

    iput-object p1, p0, Lـʾ/ᵢˏ;->ᴵᵔ:Lـʾ/ʾˋ;

    invoke-direct {p0, p2}, Lᴵʾ/ʽ;-><init>(Lˈי/ˈ;)V

    return-void
.end method


# virtual methods
.method public final ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lـʾ/ᵢˏ;->ˈٴ:Ljava/lang/Object;

    iget p1, p0, Lـʾ/ᵢˏ;->ˊʻ:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lـʾ/ᵢˏ;->ˊʻ:I

    iget-object p1, p0, Lـʾ/ᵢˏ;->ᴵᵔ:Lـʾ/ʾˋ;

    invoke-static {p1, p0}, Lـʾ/ʾˋ;->ﹳٴ(Lـʾ/ʾˋ;Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
