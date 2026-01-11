.class public final synthetic Lⁱי/ʼˈ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʽʽ:Lﹳᵢ/ﹳᐧ;

.field public final synthetic ʾˋ:Lⁱי/ـˏ;

.field public final synthetic ˈٴ:Lˎʾ/ᵎﹶ;

.field public final synthetic ˊʻ:Z

.field public final synthetic ᴵˊ:Landroid/util/Pair;

.field public final synthetic ᴵᵔ:Ljava/io/IOException;


# direct methods
.method public synthetic constructor <init>(Lⁱי/ـˏ;Landroid/util/Pair;Lﹳᵢ/ﹳᐧ;Lˎʾ/ᵎﹶ;Ljava/io/IOException;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lⁱי/ʼˈ;->ʾˋ:Lⁱי/ـˏ;

    iput-object p2, p0, Lⁱי/ʼˈ;->ᴵˊ:Landroid/util/Pair;

    iput-object p3, p0, Lⁱי/ʼˈ;->ʽʽ:Lﹳᵢ/ﹳᐧ;

    iput-object p4, p0, Lⁱי/ʼˈ;->ˈٴ:Lˎʾ/ᵎﹶ;

    iput-object p5, p0, Lⁱי/ʼˈ;->ᴵᵔ:Ljava/io/IOException;

    iput-boolean p6, p0, Lⁱי/ʼˈ;->ˊʻ:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lⁱי/ʼˈ;->ʾˋ:Lⁱי/ـˏ;

    iget-object v0, v0, Lⁱי/ـˏ;->ᴵˊ:Lˋⁱ/ʼᐧ;

    iget-object v0, v0, Lˋⁱ/ʼᐧ;->ʼˎ:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lʻʿ/ˆʾ;

    iget-object v0, p0, Lⁱי/ʼˈ;->ᴵˊ:Landroid/util/Pair;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lﹳᵢ/ᵢˏ;

    iget-object v4, p0, Lⁱי/ʼˈ;->ʽʽ:Lﹳᵢ/ﹳᐧ;

    iget-object v5, p0, Lⁱי/ʼˈ;->ˈٴ:Lˎʾ/ᵎﹶ;

    iget-object v6, p0, Lⁱי/ʼˈ;->ᴵᵔ:Ljava/io/IOException;

    iget-boolean v7, p0, Lⁱי/ʼˈ;->ˊʻ:Z

    invoke-virtual/range {v1 .. v7}, Lʻʿ/ˆʾ;->ᴵˊ(ILﹳᵢ/ᵢˏ;Lﹳᵢ/ﹳᐧ;Lˎʾ/ᵎﹶ;Ljava/io/IOException;Z)V

    return-void
.end method
