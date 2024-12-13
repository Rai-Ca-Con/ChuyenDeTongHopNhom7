-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 13, 2024 lúc 04:42 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `stackoverflow_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `answers`
--

CREATE TABLE `answers` (
  `answerId` varchar(255) NOT NULL,
  `body` text DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `questionId` varchar(255) NOT NULL,
  `userId` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `answers`
--

INSERT INTO `answers` (`answerId`, `body`, `created_at`, `deleted_at`, `is_deleted`, `score`, `updated_at`, `questionId`, `userId`) VALUES
('10ffe4ef-19b8-439e-bbbd-39d3f0a81524', '<p>Để xử lý xác thực người dùng, bạn có thể sử dụng JWT (JSON Web Tokens). Bước đầu tiên là thiết lập một endpoint đăng nhập trong Spring Boot, nơi người dùng sẽ gửi thông tin xác thực. Nếu xác thực thành công, server sẽ trả về một token. Trong React, bạn lưu token này (ví dụ trong localStorage) và gửi nó trong header của các yêu cầu tiếp theo.</p>', '2024-12-13 00:41:13.000000', NULL, b'0', 200, '2024-12-13 00:41:13.000000', 'b5c5cbb2-6b07-4a42-aa90-35747ef9008b', 'f7e2b382-41e3-4219-8b4c-b1f4a0a06088'),
('11a2c6f9-9270-45a2-99d1-6d2b27c010f0', '<p>Để xử lý xác thực người dùng, bạn có thể sử dụng JWT (JSON Web Tokens). Bước đầu tiên là thiết lập một endpoint đăng nhập trong Spring Boot, nơi người dùng sẽ gửi thông tin xác thực. Nếu xác thực thành công, server sẽ trả về một token. Trong React, bạn lưu token này (ví dụ trong localStorage) và gửi nó trong header của các yêu cầu tiếp theo.</p><p>Ví dụ trong Spring Boot:</p><p><img src=\"http://localhost:8080/api/v1/image/view/581602c5-0977-4c4f-8f89-94e9edc0affe_346409713597400.jpg\" height=\"500\" width=\"500\"></p>', '2024-12-13 00:36:02.000000', NULL, b'0', 0, '2024-12-13 00:37:44.000000', 'be3542ae-0ad0-4f93-aa9f-99e33f24131b', 'a9b50f18-b509-4304-ac42-cd11bc368c3c'),
('31b43775-f46e-43c1-b0ed-91fd9eadd163', '<p>Bạn có thể sử dụng <code>useEffect</code> để gọi API và lấy dữ liệu từ Spring Boot:</p><div class=\"ql-code-block-container\" spellcheck=\"false\"><div class=\"ql-code-block\">useEffect(() =&gt; {</div><div class=\"ql-code-block\">    axios.get(\'http://localhost:8080/api/users\')</div><div class=\"ql-code-block\">        .then(response =&gt; setUsers(response.data))</div><div class=\"ql-code-block\">        .catch(error =&gt; console.error(error));</div><div class=\"ql-code-block\">}, []);</div></div><p>Sau đó, hiển thị danh sách:</p><div class=\"ql-code-block-container\" spellcheck=\"false\"><div class=\"ql-code-block\">return (</div><div class=\"ql-code-block\">    &lt;ul&gt;</div><div class=\"ql-code-block\">        {users.map(user =&gt; (</div><div class=\"ql-code-block\">            &lt;li key={user.id}&gt;{user.name}&lt;/li&gt;</div><div class=\"ql-code-block\">        ))}</div><div class=\"ql-code-block\">    &lt;/ul&gt;</div><div class=\"ql-code-block\">);</div></div>', '2024-12-13 01:57:07.000000', NULL, b'0', 93, '2024-12-13 01:57:07.000000', '65acbfed-379b-40f8-955c-44b736ad678e', 'c98d481b-98d3-4008-a583-03cc0d0d8cfb'),
('7695e133-4335-4952-85e7-62f56d1d0372', '<p>Để kết nối ứng dụng React với Spring Boot, bạn cần đảm bảo rằng API Spring Boot đã được khởi động và có thể truy cập được. Bước đầu tiên là thiết lập CORS trên server Spring Boot bằng cách thêm một cấu hình CORS trong class cấu hình của bạn. Ví dụ:</p><div class=\"ql-code-block-container\" spellcheck=\"false\"><div class=\"ql-code-block\">@Configuration</div><div class=\"ql-code-block\">public class WebConfig implements WebMvcConfigurer {</div><div class=\"ql-code-block\">    @Override</div><div class=\"ql-code-block\">    public void addCorsMappings(CorsRegistry registry) {</div><div class=\"ql-code-block\">        registry.addMapping(\"/**\").allowedOrigins(\"http://localhost:3000\");</div><div class=\"ql-code-block\">    }</div><div class=\"ql-code-block\">}</div></div><p>Sau đó, bạn có thể sử dụng <code>fetch</code> hoặc axios trong React để gọi API:</p><div class=\"ql-code-block-container\" spellcheck=\"false\"><div class=\"ql-code-block\">axios.get(\'http://localhost:8080/api/your-endpoint\')</div><div class=\"ql-code-block\">    .then(response =&gt; console.log(response.data))</div><div class=\"ql-code-block\">    .catch(error =&gt; console.error(error));</div></div><p><br></p>', '2024-12-13 00:21:33.000000', NULL, b'0', 1, '2024-12-13 00:21:33.000000', 'b5c5cbb2-6b07-4a42-aa90-35747ef9008b', 'c98d481b-98d3-4008-a583-03cc0d0d8cfb'),
('78bc7fa1-80e4-44ca-b988-508ea0d7d544', '<p>Để quản lý trạng thái, bạn có thể sử dụng Context API hoặc Redux. Context API phù hợp cho ứng dụng nhỏ, trong khi Redux tốt hơn cho ứng dụng lớn với nhiều trạng thái phức tạp.</p><p>Ví dụ sử dụng Context API:</p><div class=\"ql-code-block-container\" spellcheck=\"false\"><div class=\"ql-code-block\">const MyContext = createContext();</div><div class=\"ql-code-block\"><br></div><div class=\"ql-code-block\">const MyProvider = ({ children }) =&gt; {</div><div class=\"ql-code-block\">    const [data, setData] = useState([]);</div><div class=\"ql-code-block\"><br></div><div class=\"ql-code-block\">    useEffect(() =&gt; {</div><div class=\"ql-code-block\">        const fetchData = async () =&gt; {</div><div class=\"ql-code-block\">            const result = await axios.get(\'http://localhost:8080/api/data\');</div><div class=\"ql-code-block\">            setData(result.data);</div><div class=\"ql-code-block\">        };</div><div class=\"ql-code-block\">        fetchData();</div><div class=\"ql-code-block\">    }, []);</div><div class=\"ql-code-block\"><br></div><div class=\"ql-code-block\">    return (</div><div class=\"ql-code-block\">        &lt;MyContext.Provider value={data}&gt;</div><div class=\"ql-code-block\">            {children}</div><div class=\"ql-code-block\">        &lt;/MyContext.Provider&gt;</div><div class=\"ql-code-block\">    );</div><div class=\"ql-code-block\">};</div></div>', '2024-12-13 01:58:32.000000', NULL, b'0', 55, '2024-12-13 01:58:32.000000', 'd904c8d0-c5ba-4f7e-a61f-c820fbf3e2e7', 'c98d481b-98d3-4008-a583-03cc0d0d8cfb'),
('842176ef-b686-409b-9011-b8d6ef419e4d', '<p>Để tích hợp React Router với Spring Boot, bạn cần thiết lập các route trong React và đảm bảo rằng Spring Boot trả về trang HTML cho các route đó khi người dùng truy cập trực tiếp. Bạn có thể sử dụng <code>BrowserRouter</code> từ React Router để xử lý điều này. Ví dụ:</p><div class=\"ql-code-block-container\" spellcheck=\"false\"><div class=\"ql-code-block\">import { BrowserRouter as Router, Route, Switch } from \'react-router-dom\';</div><div class=\"ql-code-block\"><br></div><div class=\"ql-code-block\">function App() {</div><div class=\"ql-code-block\">    return (</div><div class=\"ql-code-block\">        &lt;Router&gt;</div><div class=\"ql-code-block\">            &lt;Switch&gt;</div><div class=\"ql-code-block\">                &lt;Route path=\"/home\" component={Home} /&gt;</div><div class=\"ql-code-block\">                &lt;Route path=\"/about\" component={About} /&gt;</div><div class=\"ql-code-block\">            &lt;/Switch&gt;</div><div class=\"ql-code-block\">        &lt;/Router&gt;</div><div class=\"ql-code-block\">    );</div><div class=\"ql-code-block\">}</div></div>', '2024-12-13 01:29:09.000000', NULL, b'0', 86, '2024-12-13 01:29:09.000000', 'c1d9b2ab-f4c2-4754-a3ff-404851dc39ba', 'c98d481b-98d3-4008-a583-03cc0d0d8cfb'),
('c32c9b52-106e-447c-8230-96db12cd6a30', '<p><span style=\"background-color: rgb(249, 249, 249); color: rgb(0, 0, 0);\">Trong React, bạn có thể kiểm tra đầu vào trước khi gửi dữ liệu:</span></p><div class=\"ql-code-block-container\" spellcheck=\"false\"><div class=\"ql-code-block\" data-language=\"plain\">const validateInput = () =&gt; {</div><div class=\"ql-code-block\" data-language=\"plain\">if (!name) {</div><div class=\"ql-code-block\" data-language=\"plain\">alert(\'Tên không được để trống\');</div><div class=\"ql-code-block\" data-language=\"plain\">return false;</div><div class=\"ql-code-block\" data-language=\"plain\">}</div><div class=\"ql-code-block\" data-language=\"plain\">return true;</div><div class=\"ql-code-block\" data-language=\"plain\">};</div></div><p><br></p>', '2024-12-13 02:03:15.000000', NULL, b'0', 199, '2024-12-13 02:03:15.000000', 'c56a5a31-53d0-4660-8700-e188ecccc980', '07219b5f-18dd-4b69-986c-0ed1010e63ac'),
('d3352990-49b8-4079-9425-525a236ffdfb', '<p>Để upload file, bạn có thể sử dụng <code>FormData</code> trong React</p><div class=\"ql-code-block-container\" spellcheck=\"false\"><div class=\"ql-code-block\">const handleFileChange = (event) =&gt; {</div><div class=\"ql-code-block\">    const file = event.target.files[0];</div><div class=\"ql-code-block\">    const formData = new FormData();</div><div class=\"ql-code-block\">    formData.append(\"file\", file);</div><div class=\"ql-code-block\"><br></div><div class=\"ql-code-block\">    axios.post(\'http://localhost:8080/upload\', formData)</div><div class=\"ql-code-block\">        .then(response =&gt; console.log(response.data))</div><div class=\"ql-code-block\">        .catch(error =&gt; console.error(error));</div><div class=\"ql-code-block\">};</div></div><p>Ở phía Spring Boot, bạn có thể nhận file như sau:</p><div class=\"ql-code-block-container\" spellcheck=\"false\"><div class=\"ql-code-block\">@PostMapping(\"/upload\")</div><div class=\"ql-code-block\">public ResponseEntity&lt;String&gt; uploadFile(@RequestParam(\"file\") MultipartFile file) {</div><div class=\"ql-code-block\">    // Xử lý file</div><div class=\"ql-code-block\">    return ResponseEntity.ok(\"File uploaded successfully\");</div><div class=\"ql-code-block\">}</div></div>', '2024-12-13 01:30:33.000000', NULL, b'0', 47, '2024-12-13 01:30:33.000000', '8d290c05-5a9f-48b2-98b8-8ee8fb3b760a', 'c98d481b-98d3-4008-a583-03cc0d0d8cfb'),
('dd22602c-7748-4e1c-ab3b-9b8380c41c21', '<p>Trong React, bạn có thể kiểm tra đầu vào trước khi gửi dữ liệu:</p><div class=\"ql-code-block-container\" spellcheck=\"false\"><div class=\"ql-code-block\" data-language=\"plain\">const validateInput = () =&gt; {</div><div class=\"ql-code-block\" data-language=\"plain\">    if (!name) {</div><div class=\"ql-code-block\" data-language=\"plain\">        alert(\'Tên không được để trống\');</div><div class=\"ql-code-block\" data-language=\"plain\">        return false;</div><div class=\"ql-code-block\" data-language=\"plain\">    }</div><div class=\"ql-code-block\" data-language=\"plain\">    return true;</div><div class=\"ql-code-block\" data-language=\"plain\">};</div></div><p>Ở phía Spring Boot, bạn có thể sử dụng các annotation như <code>@NotNull</code> để kiểm tra dữ liệu đầu vào:</p><div class=\"ql-code-block-container\" spellcheck=\"false\"><div class=\"ql-code-block\" data-language=\"plain\">public class User {</div><div class=\"ql-code-block\" data-language=\"plain\">    @NotNull</div><div class=\"ql-code-block\" data-language=\"plain\">    private String name;</div><div class=\"ql-code-block\" data-language=\"plain\">}</div></div><p><br></p>', '2024-12-13 01:55:57.000000', NULL, b'0', 87, '2024-12-13 01:55:57.000000', 'c56a5a31-53d0-4660-8700-e188ecccc980', 'c98d481b-98d3-4008-a583-03cc0d0d8cfb');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `badges`
--

CREATE TABLE `badges` (
  `badgeId` varchar(255) NOT NULL,
  `badgeType` enum('BRONZE_ANSWER_SCORE','BRONZE_QUESTION_SCORE','BRONZE_REPUTATION','FIRST_QUESTION_ACCEPTED','GOLD_ANSWER_SCORE','GOLD_QUESTION_SCORE','GOLD_REPUTATION','SILVER_ANSWER_SCORE','SILVER_QUESTION_SCORE','SILVER_REPUTATION') DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `threshold` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `badges`
--

INSERT INTO `badges` (`badgeId`, `badgeType`, `description`, `threshold`) VALUES
('03db9bb5-1138-44fc-8202-d9ad5d6d1fdd', 'BRONZE_ANSWER_SCORE', 'Hạng đồng - đạt 200 điểm tổng từ các câu trả lời', 200),
('0b520fc1-a413-4e26-9c30-bdafab959bc8', 'BRONZE_REPUTATION', 'Hạng đồng - đạt 100 điểm danh tiếng', 100),
('7ac65c54-d7c3-4f1a-9e51-db20b204c927', 'GOLD_ANSWER_SCORE', 'Hạng vàng - đạt 1000 điểm tổng từ các câu trả lời', 1000),
('7c8c473f-7079-4d87-8c6c-55cf2c1b7c78', 'GOLD_REPUTATION', 'Hạng vàng - đạt 1000 điểm danh tiếng', 1000),
('a1da574e-0fc5-4b80-bbcb-47950e52d25a', 'BRONZE_QUESTION_SCORE', 'Hạng đồng - đạt 200 điểm tổng từ các câu hỏi', 200),
('a9205d8f-cd41-43c6-8b74-9bc9a50fbbe5', 'SILVER_QUESTION_SCORE', 'Hạng bạc - đạt 500 điểm tổng từ các câu hỏi', 500),
('c6321632-3dc8-4fe4-8ed5-b4948b5bd7d4', 'GOLD_QUESTION_SCORE', 'Hạng vàng - đạt 1000 điểm tổng từ các câu hỏi', 1000),
('d2f98cad-f322-42de-9e7f-7530d53987f8', 'FIRST_QUESTION_ACCEPTED', 'Huy hiệu đặc biệt - lần đầu tiên câu hỏi được chấp nhận', 1),
('e74a66b2-c42a-4221-a5fe-948c4025676a', 'SILVER_REPUTATION', 'Hạng bạc - đạt 500 điểm danh tiếng', 500),
('eed33926-e56d-4ba9-b41a-9fd074a03922', 'SILVER_ANSWER_SCORE', 'Hạng bạc - đạt 500 điểm tổng từ các câu trả lời', 500);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `commentId` varchar(255) NOT NULL,
  `content` tinytext DEFAULT NULL,
  `create_at` datetime(6) DEFAULT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT NULL,
  `update_at` datetime(6) DEFAULT NULL,
  `answerId` varchar(255) DEFAULT NULL,
  `questionId` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`commentId`, `content`, `create_at`, `deleted_at`, `is_deleted`, `update_at`, `answerId`, `questionId`, `userId`) VALUES
('a3e97bd3-bf50-42c6-b454-9acd80fd99b7', '<p>╰(*°▽°*)╯☆*: .｡. o(≧▽≦)o .｡.:*☆😏</p>', '2024-12-13 00:34:47.000000', NULL, b'0', '2024-12-13 00:34:47.000000', '7695e133-4335-4952-85e7-62f56d1d0372', NULL, 'a9b50f18-b509-4304-ac42-cd11bc368c3c'),
('d6f8f759-5286-4335-af48-26afa1a2be9a', '<p>(👉ﾟヮﾟ)👉( •̀ ω •́ )y(❁´◡`❁)😶‍🌫️</p>', '2024-12-13 00:34:36.000000', NULL, b'0', '2024-12-13 00:34:36.000000', NULL, 'b5c5cbb2-6b07-4a42-aa90-35747ef9008b', 'a9b50f18-b509-4304-ac42-cd11bc368c3c'),
('fa516452-cede-4c97-876c-20e161304624', '<p>Cảm ơn bạn !! Đội ơn ❤️</p>', '2024-12-13 00:33:45.000000', '2024-12-13 00:34:16.000000', b'1', '2024-12-13 00:34:08.000000', '7695e133-4335-4952-85e7-62f56d1d0372', NULL, 'a9b50f18-b509-4304-ac42-cd11bc368c3c');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `questions`
--

CREATE TABLE `questions` (
  `questionId` varchar(255) NOT NULL,
  `accepted_answer_id` varchar(255) DEFAULT NULL,
  `body` text DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `title` varchar(200) NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `view` int(11) DEFAULT NULL,
  `userId` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `questions`
--

INSERT INTO `questions` (`questionId`, `accepted_answer_id`, `body`, `created_at`, `deleted_at`, `is_deleted`, `score`, `title`, `updated_at`, `view`, `userId`) VALUES
('191cf872-2dda-4e0c-bfa4-6b99e729ec78', NULL, '<p>Tôi muốn sử dụng Redux để quản lý trạng thái trong ứng dụng của mình, nhưng chưa rõ cách tích hợp nó với dữ liệu từ Spring Boot. Ai có thể hướng dẫn tôi không?</p>', '2024-12-13 10:27:25.000000', NULL, b'0', 1, 'Cách sử dụng Redux để quản lý trạng thái trong ứng dụng React với Spring Boot?', '2024-12-13 10:27:25.000000', 2, 'dcd84c9e-c7d2-4216-bd51-337799630f2f'),
('1d458d39-fd7c-4538-b888-58517781128b', NULL, '<p>Khi tôi gửi yêu cầu đến API Spring Boot từ ứng dụng React, tôi muốn xử lý các lỗi và phản hồi một cách hiệu quả. Có ai có thể hướng dẫn tôi cách thực hiện điều này không?</p>', '2024-12-13 00:51:40.000000', NULL, b'0', 50, 'Cách xử lý lỗi và phản hồi từ API Spring Boot trong React', '2024-12-13 00:51:40.000000', 4, 'c98d481b-98d3-4008-a583-03cc0d0d8cfb'),
('31fa4cc0-39ba-4cd7-a9f2-e8c04f4ea15a', NULL, '<p>Tôi cần tạo 1 component User cho project của tôi bao gồm các trường thông tin cần thiết như Tên/Tuổi/Địa chỉ</p>', '2024-12-13 00:08:54.000000', NULL, b'0', 44, 'Cách tạo 1 componet trong Reactjs', '2024-12-13 00:08:54.000000', 4, '7139df4c-a973-417d-bb88-54fd7c099a4e'),
('497b27ce-07b9-4369-b4a1-24a12542c9d3', NULL, '<p>I\'m new to html and css (self taught) I\'m trying to use a simple grid system with a side bar + content. So for the side bar I want link to internal pages to change the content, I\'m making a basic template for a portfolio. But what\'s happening now is that when I try to add the internal link, it feels like everything is like a link. I notice that because links are not working, I did a \"hover\" to change the color and the text to italic, but it appears to be happening in the whole page. Here\'s the code:</p><div class=\"ql-code-block-container\" spellcheck=\"false\"><div class=\"ql-code-block\">body {</div><div class=\"ql-code-block\">&nbsp;display: grid;</div><div class=\"ql-code-block\">&nbsp;grid-template-columns: minmax(150px, 25%) 1fr;</div><div class=\"ql-code-block\">&nbsp;padding: 0;</div><div class=\"ql-code-block\">&nbsp;margin: 0;</div><div class=\"ql-code-block\">}</div><div class=\"ql-code-block\"><br></div><div class=\"ql-code-block\">.sidebar {</div><div class=\"ql-code-block\">&nbsp;height: 200vh;</div><div class=\"ql-code-block\">&nbsp;font-size: 4rem;</div><div class=\"ql-code-block\">&nbsp;text-align: center;</div><div class=\"ql-code-block\">&nbsp;color: grey;</div><div class=\"ql-code-block\">&nbsp;background-color: yellow;</div><div class=\"ql-code-block\">}</div><div class=\"ql-code-block\"><br></div><div class=\"ql-code-block\">.content {</div><div class=\"ql-code-block\">&nbsp;padding: 2rem;</div><div class=\"ql-code-block\">&nbsp;color: black;</div><div class=\"ql-code-block\">&nbsp;background-color: lightblue;</div><div class=\"ql-code-block\">&nbsp;margin-top: 0px;</div><div class=\"ql-code-block\">&nbsp;margin-bottom: 0px;</div><div class=\"ql-code-block\">&nbsp;font-size: 4rem;</div><div class=\"ql-code-block\">}</div><div class=\"ql-code-block\"><br></div><div class=\"ql-code-block\">body {</div><div class=\"ql-code-block\">&nbsp;font-family: system-ui, serif;</div><div class=\"ql-code-block\">}</div><div class=\"ql-code-block\"><br></div><div class=\"ql-code-block\">.white {</div><div class=\"ql-code-block\">&nbsp;font-family: system-ui, serif;</div><div class=\"ql-code-block\">&nbsp;color: red;</div><div class=\"ql-code-block\">}</div><div class=\"ql-code-block\"><br></div><div class=\"ql-code-block\">&nbsp;:hover {</div><div class=\"ql-code-block\">&nbsp;font-family: system-ui, serif;</div><div class=\"ql-code-block\">&nbsp;color: rgb(255, 199, 209);</div><div class=\"ql-code-block\">&nbsp;font-style: italic;</div><div class=\"ql-code-block\">}</div><div class=\"ql-code-block\">&lt;div class=\"sidebar\" contenteditable&gt;</div><div class=\"ql-code-block\">&nbsp;&lt;ul&gt;</div><div class=\"ql-code-block\">&nbsp;&nbsp;&nbsp;&lt;li&gt;&lt;a href=\"/Break.html\" class=\"white\"&gt;The River&lt;/a&gt;&lt;/li&gt;</div><div class=\"ql-code-block\">&nbsp;&nbsp;&nbsp;&lt;li&gt;&lt;a href=\"/Break.html\" class=\"white\"&gt;The River&lt;/a&gt;&lt;/li&gt;</div><div class=\"ql-code-block\">&nbsp;&nbsp;&nbsp;&lt;li&gt;&lt;a href=\"/Break.html\" class=\"white\"&gt;The River&lt;/a&gt;&lt;/li&gt;</div><div class=\"ql-code-block\">&nbsp;&nbsp;&nbsp;&lt;li&gt;&lt;a href=\"/Break.html\" class=\"white\"&gt;The River&lt;/a&gt;&lt;/li&gt;</div><div class=\"ql-code-block\">&nbsp;&nbsp;&nbsp;&lt;li&gt;&lt;a href=\"/Break.html\" class=\"white\"&gt;The River&lt;/a&gt;&lt;/li&gt;</div><div class=\"ql-code-block\">&nbsp;&nbsp;&nbsp;&lt;li&gt;&lt;a href=\"/Break.html\" class=\"white\"&gt;The River&lt;/a&gt;&lt;/li&gt;</div><div class=\"ql-code-block\">&nbsp;&lt;/ul&gt;</div><div class=\"ql-code-block\">&lt;/div&gt;</div><div class=\"ql-code-block\">&lt;p class=\"content\" contenteditable&gt;</div><div class=\"ql-code-block\">&nbsp;cto quia fugit nulla! Natus, iure eveniet ex iusto tempora animi quibusdam porro?</div><div class=\"ql-code-block\">&lt;/p&gt;</div></div>', '2024-12-13 00:06:22.000000', NULL, b'0', 2, 'Hyperlink affects the whole page ?', '2024-12-13 00:06:22.000000', 4, '7139df4c-a973-417d-bb88-54fd7c099a4e'),
('4fce0b63-048b-417d-9d53-d9edc8490f77', NULL, '<p>Tôi muốn xây dựng một hệ thống quản lý thông tin người dùng với tính năng thêm, sửa, xóa. Làm thế nào để tôi có thể quản lý thông tin này giữa frontend và backend?</p>', '2024-12-13 10:37:54.000000', NULL, b'0', 2, 'Cách quản lý thông tin người dùng trong ứng dụng React và Spring Boot?', '2024-12-13 10:37:54.000000', 2, '70697640-61b1-4a91-bd98-1893c8284050'),
('65acbfed-379b-40f8-955c-44b736ad678e', NULL, '<p>Tôi muốn triển khai ứng dụng React và Spring Boot lên server, nhưng không biết quy trình cụ thể. Có ai có thể hướng dẫn tôi từng bước không?</p>', '2024-12-13 01:14:52.000000', NULL, b'0', 49, 'Làm thế nào để triển khai ứng dụng React và Spring Boot lên server?', '2024-12-13 01:14:52.000000', 3, 'f7e2b382-41e3-4219-8b4c-b1f4a0a06088'),
('7a3d7bb4-ee80-40ef-89b0-52c69eda0ce3', NULL, '<p>Tôi muốn thiết lập WebSocket để truyền tải dữ liệu thời gian thực giữa ứng dụng React và Spring Boot, nhưng không biết bắt đầu từ đâu. Ai có thể giúp không?</p>', '2024-12-13 02:02:32.000000', NULL, b'0', 199, 'Cách sử dụng WebSocket trong React và Spring Boot?', '2024-12-13 02:02:32.000000', 1, '07219b5f-18dd-4b69-986c-0ed1010e63ac'),
('7ce1872a-f6ef-4a9d-ad70-da2832410292', NULL, '<p>Tôi đang cố gắng kết nối ứng dụng React của mình với API backend được xây dựng bằng Spring Boot. Tôi đã thiết lập CORS nhưng vẫn gặp lỗi. Ai có thể chỉ cho tôi cách thiết lập kết nối này?</p>', '2024-12-13 00:12:26.000000', '2024-12-13 00:12:44.000000', b'1', 0, 'Làm thế nào để kết nối React với Spring Boot?', '2024-12-13 00:12:26.000000', 1, '7139df4c-a973-417d-bb88-54fd7c099a4e'),
('846495ef-351a-42b2-9c36-dbcc2e101482', '', '<p>Tôi muốn thực hiện phân trang cho danh sách dữ liệu từ API Spring Boot trong ứng dụng React, nhưng không biết cách làm điều này. Có ai có thể giúp tôi không? </p>', '2024-12-13 10:29:49.000000', NULL, b'0', 0, 'Làm thế nào để xử lý phân trang trong ứng dụng React và Spring Boot?', '2024-12-13 10:30:36.000000', 1, '07219b5f-18dd-4b69-986c-0ed1010e63ac'),
('8d290c05-5a9f-48b2-98b8-8ee8fb3b760a', NULL, '<p>Tôi đang cố gắng gửi file từ ứng dụng React đến API Spring Boot, nhưng không biết cách cấu hình cả hai phía. Bạn có thể hướng dẫn tôi không?</p>', '2024-12-13 01:13:36.000000', NULL, b'0', 56, 'Cách xử lý upload file từ React đến Spring Boot?', '2024-12-13 01:13:36.000000', 2, 'f7e2b382-41e3-4219-8b4c-b1f4a0a06088'),
('b5c5cbb2-6b07-4a42-aa90-35747ef9008b', NULL, '<p>Tôi đang cố gắng kết nối ứng dụng React của mình với API backend được xây dựng bằng Spring Boot. Tôi đã thiết lập CORS nhưng vẫn gặp lỗi. Ai có thể chỉ cho tôi cách thiết lập kết nối này?</p>', '2024-12-13 00:12:24.000000', NULL, b'0', 51, 'Làm thế nào để kết nối React với Spring Boot?', '2024-12-13 00:12:24.000000', 7, '7139df4c-a973-417d-bb88-54fd7c099a4e'),
('be3542ae-0ad0-4f93-aa9f-99e33f24131b', '', '<p>Tôi muốn triển khai hệ thống xác thực người dùng trên ứng dụng của mình, nhưng chưa rõ cách kết hợp giữa React và Spring Boot. Có ai có thể hướng dẫn tôi cách làm điều này không?</p>', '2024-12-13 00:13:35.000000', NULL, b'0', 3, 'Làm thế nào để xử lý xác thực người dùng trong ứng dụng React và Spring Boot?', '2024-12-13 00:13:52.000000', 5, '7139df4c-a973-417d-bb88-54fd7c099a4e'),
('c1d9b2ab-f4c2-4754-a3ff-404851dc39ba', NULL, '<p>Tôi muốn sử dụng React Router để điều hướng trong ứng dụng của mình nhưng không biết cách cấu hình Spring Boot để hỗ trợ các route từ React. Ai có thể giúp tôi?</p>', '2024-12-13 01:12:59.000000', NULL, b'0', 84, 'Làm thế nào để tích hợp React Router với Spring Boot?', '2024-12-13 01:12:59.000000', 2, 'f7e2b382-41e3-4219-8b4c-b1f4a0a06088'),
('c56a5a31-53d0-4660-8700-e188ecccc980', NULL, '<p>Tôi muốn thực hiện kiểm tra đầu vào cho form trong React và đồng thời kiểm tra trên server Spring Boot. Có ai có thể chỉ cho tôi cách thực hiện điều này không?</p>', '2024-12-13 01:14:12.000000', NULL, b'0', 51, 'Làm thế nào để thực hiện kiểm tra đầu vào trong React và Spring Boot?', '2024-12-13 01:14:12.000000', 3, 'f7e2b382-41e3-4219-8b4c-b1f4a0a06088'),
('d904c8d0-c5ba-4f7e-a61f-c820fbf3e2e7', NULL, '<p> Tôi đang gặp khó khăn trong việc quản lý trạng thái ứng dụng React của mình khi nhận dữ liệu từ API Spring Boot. Có ai có thể giới thiệu cho tôi một số phương pháp hoặc thư viện quản lý trạng thái hiệu quả không?</p>', '2024-12-13 00:43:10.000000', NULL, b'0', 200, 'Làm thế nào để quản lý trạng thái trong React khi sử dụng API từ Spring Boot?', '2024-12-13 00:43:10.000000', 3, 'f7e2b382-41e3-4219-8b4c-b1f4a0a06088'),
('fe3c8aae-2289-40f9-a19e-5d7f12fa7a98', NULL, '<p>Tôi muốn người dùng có thể tìm kiếm dữ liệu từ API Spring Boot và hiển thị kết quả trong ứng dụng React, nhưng không biết cách gửi yêu cầu tìm kiếm. Có ai có thể giúp không?</p>', '2024-12-13 10:25:59.000000', NULL, b'0', 1, 'Làm thế nào để thực hiện tìm kiếm dữ liệu trong ứng dụng React và Spring Boot?', '2024-12-13 10:25:59.000000', 2, 'dcd84c9e-c7d2-4216-bd51-337799630f2f');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `questions_tags`
--

CREATE TABLE `questions_tags` (
  `questionId` varchar(255) NOT NULL,
  `tagId` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `questions_tags`
--

INSERT INTO `questions_tags` (`questionId`, `tagId`) VALUES
('497b27ce-07b9-4369-b4a1-24a12542c9d3', '58d57caa-77ab-47cc-a180-0ef115211d26'),
('497b27ce-07b9-4369-b4a1-24a12542c9d3', '0a5333ea-8af2-4baf-af25-555a172c4313'),
('31fa4cc0-39ba-4cd7-a9f2-e8c04f4ea15a', 'db400321-5237-4645-b25f-fd8bc60b76ff'),
('b5c5cbb2-6b07-4a42-aa90-35747ef9008b', 'e2ba2253-ec95-497a-8e77-a7ba18da5ab4'),
('b5c5cbb2-6b07-4a42-aa90-35747ef9008b', '2d23255f-bd31-4b2c-90d8-2c9fd69d360a'),
('b5c5cbb2-6b07-4a42-aa90-35747ef9008b', 'bd87856c-45e8-4798-ab53-bf9781a5413b'),
('b5c5cbb2-6b07-4a42-aa90-35747ef9008b', '524caf94-b861-4431-a45e-884cba7c4e86'),
('7ce1872a-f6ef-4a9d-ad70-da2832410292', 'e2ba2253-ec95-497a-8e77-a7ba18da5ab4'),
('7ce1872a-f6ef-4a9d-ad70-da2832410292', '2d23255f-bd31-4b2c-90d8-2c9fd69d360a'),
('7ce1872a-f6ef-4a9d-ad70-da2832410292', 'bd87856c-45e8-4798-ab53-bf9781a5413b'),
('7ce1872a-f6ef-4a9d-ad70-da2832410292', '524caf94-b861-4431-a45e-884cba7c4e86'),
('be3542ae-0ad0-4f93-aa9f-99e33f24131b', 'e2ba2253-ec95-497a-8e77-a7ba18da5ab4'),
('be3542ae-0ad0-4f93-aa9f-99e33f24131b', 'c12c6589-0aa1-4942-8303-2a6e6d8fe6c8'),
('be3542ae-0ad0-4f93-aa9f-99e33f24131b', 'd1e66e7e-893e-413e-ba83-6daece00e99c'),
('be3542ae-0ad0-4f93-aa9f-99e33f24131b', '2d23255f-bd31-4b2c-90d8-2c9fd69d360a'),
('d904c8d0-c5ba-4f7e-a61f-c820fbf3e2e7', 'e2ba2253-ec95-497a-8e77-a7ba18da5ab4'),
('d904c8d0-c5ba-4f7e-a61f-c820fbf3e2e7', '2d23255f-bd31-4b2c-90d8-2c9fd69d360a'),
('d904c8d0-c5ba-4f7e-a61f-c820fbf3e2e7', '1dccb014-9dc9-44db-8a0a-070a73167f35'),
('d904c8d0-c5ba-4f7e-a61f-c820fbf3e2e7', '81123bee-fa91-492b-8c2c-ddb7eed16dca'),
('1d458d39-fd7c-4538-b888-58517781128b', '97f3d30f-3f50-4537-9021-538e2074506e'),
('1d458d39-fd7c-4538-b888-58517781128b', '3b09f582-dff0-4170-9120-fc34b1062107'),
('c1d9b2ab-f4c2-4754-a3ff-404851dc39ba', 'e2ba2253-ec95-497a-8e77-a7ba18da5ab4'),
('c1d9b2ab-f4c2-4754-a3ff-404851dc39ba', '2d23255f-bd31-4b2c-90d8-2c9fd69d360a'),
('c1d9b2ab-f4c2-4754-a3ff-404851dc39ba', '65ae0d9e-ab2a-4a32-a2b2-7ce91305d1de'),
('8d290c05-5a9f-48b2-98b8-8ee8fb3b760a', 'e2ba2253-ec95-497a-8e77-a7ba18da5ab4'),
('8d290c05-5a9f-48b2-98b8-8ee8fb3b760a', '2d23255f-bd31-4b2c-90d8-2c9fd69d360a'),
('8d290c05-5a9f-48b2-98b8-8ee8fb3b760a', '4a283a51-e82f-4e0f-aab6-1561ca0526d0'),
('c56a5a31-53d0-4660-8700-e188ecccc980', 'e2ba2253-ec95-497a-8e77-a7ba18da5ab4'),
('c56a5a31-53d0-4660-8700-e188ecccc980', '2d23255f-bd31-4b2c-90d8-2c9fd69d360a'),
('c56a5a31-53d0-4660-8700-e188ecccc980', '6c304e4e-4ce4-4a19-bdcd-717f3f132365'),
('65acbfed-379b-40f8-955c-44b736ad678e', 'e2ba2253-ec95-497a-8e77-a7ba18da5ab4'),
('65acbfed-379b-40f8-955c-44b736ad678e', '2d23255f-bd31-4b2c-90d8-2c9fd69d360a'),
('65acbfed-379b-40f8-955c-44b736ad678e', '4a3ddd5a-b5a1-44d8-993f-fe990a2aa247'),
('7a3d7bb4-ee80-40ef-89b0-52c69eda0ce3', 'e2ba2253-ec95-497a-8e77-a7ba18da5ab4'),
('7a3d7bb4-ee80-40ef-89b0-52c69eda0ce3', '2d23255f-bd31-4b2c-90d8-2c9fd69d360a'),
('7a3d7bb4-ee80-40ef-89b0-52c69eda0ce3', 'e38fab3c-87c7-42c4-8ebf-417bd1f08f6b'),
('fe3c8aae-2289-40f9-a19e-5d7f12fa7a98', 'e2ba2253-ec95-497a-8e77-a7ba18da5ab4'),
('fe3c8aae-2289-40f9-a19e-5d7f12fa7a98', '2d23255f-bd31-4b2c-90d8-2c9fd69d360a'),
('fe3c8aae-2289-40f9-a19e-5d7f12fa7a98', '36aa5f14-e829-4a97-9e68-c48ce5fff009'),
('191cf872-2dda-4e0c-bfa4-6b99e729ec78', '81123bee-fa91-492b-8c2c-ddb7eed16dca'),
('846495ef-351a-42b2-9c36-dbcc2e101482', 'bcad0bea-48d9-49f3-a540-36cbb8b9ee5a'),
('4fce0b63-048b-417d-9d53-d9edc8490f77', '777aa276-e245-47a0-bd7c-8f4bfe8e437a');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tags`
--

CREATE TABLE `tags` (
  `tagId` varchar(255) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tags`
--

INSERT INTO `tags` (`tagId`, `created_at`, `name`) VALUES
('0a5333ea-8af2-4baf-af25-555a172c4313', '2024-12-13 00:06:22.000000', 'CSS'),
('1dccb014-9dc9-44db-8a0a-070a73167f35', '2024-12-13 00:43:10.000000', 'State Management'),
('2d23255f-bd31-4b2c-90d8-2c9fd69d360a', '2024-12-13 00:12:24.000000', 'Spring Boot'),
('36aa5f14-e829-4a97-9e68-c48ce5fff009', '2024-12-13 10:25:59.000000', 'Search'),
('3b09f582-dff0-4170-9120-fc34b1062107', '2024-12-13 00:51:40.000000', 'API Response'),
('4a283a51-e82f-4e0f-aab6-1561ca0526d0', '2024-12-13 01:13:36.000000', 'File Upload'),
('4a3ddd5a-b5a1-44d8-993f-fe990a2aa247', '2024-12-13 01:14:52.000000', 'Deployment'),
('524caf94-b861-4431-a45e-884cba7c4e86', '2024-12-13 00:12:24.000000', 'API'),
('58d57caa-77ab-47cc-a180-0ef115211d26', '2024-12-13 00:06:22.000000', 'HTML'),
('65ae0d9e-ab2a-4a32-a2b2-7ce91305d1de', '2024-12-13 01:12:59.000000', 'React Router'),
('6c304e4e-4ce4-4a19-bdcd-717f3f132365', '2024-12-13 01:14:12.000000', 'Data Fetching'),
('777aa276-e245-47a0-bd7c-8f4bfe8e437a', '2024-12-13 10:37:54.000000', 'User Management'),
('81123bee-fa91-492b-8c2c-ddb7eed16dca', '2024-12-13 00:43:10.000000', 'Redux'),
('97f3d30f-3f50-4537-9021-538e2074506e', '2024-12-13 00:51:40.000000', 'Error Handling'),
('bcad0bea-48d9-49f3-a540-36cbb8b9ee5a', '2024-12-13 10:29:49.000000', 'Pagination'),
('bd87856c-45e8-4798-ab53-bf9781a5413b', '2024-12-13 00:12:24.000000', 'CORS'),
('c12c6589-0aa1-4942-8303-2a6e6d8fe6c8', '2024-12-13 00:13:35.000000', 'Authentication'),
('d1e66e7e-893e-413e-ba83-6daece00e99c', '2024-12-13 00:13:35.000000', 'JWT'),
('db400321-5237-4645-b25f-fd8bc60b76ff', '2024-12-13 00:08:54.000000', 'Reactjs'),
('e2ba2253-ec95-497a-8e77-a7ba18da5ab4', '2024-12-13 00:12:24.000000', 'React'),
('e38fab3c-87c7-42c4-8ebf-417bd1f08f6b', '2024-12-13 02:02:32.000000', 'WebSocket');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tokens`
--

CREATE TABLE `tokens` (
  `tokenId` varchar(255) NOT NULL,
  `expirationDate` datetime(6) DEFAULT NULL,
  `expried` bit(1) DEFAULT NULL,
  `refreshExpirationDate` datetime(6) DEFAULT NULL,
  `refreshToken` varchar(300) NOT NULL,
  `revoked` bit(1) DEFAULT NULL,
  `token` varchar(300) NOT NULL,
  `userId` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tokens`
--

INSERT INTO `tokens` (`tokenId`, `expirationDate`, `expried`, `refreshExpirationDate`, `refreshToken`, `revoked`, `token`, `userId`) VALUES
('0aaebe5b-4049-4be1-91ff-4d0088f9bdfb', '2024-12-13 01:44:30.000000', b'0', '2024-12-13 10:44:30.000000', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJrYXRhcmluYTEyMzQ1NkBnbWFpbC5jb20iLCJzY29wZSI6IlVTRVIiLCJpc3MiOiJhdHVzIiwiZXhwIjoxNzM0MDYxNDcwLCJpYXQiOjE3MzQwMjU0NzAsImp0aSI6IjE5ZjlhMWMyLTk5ZjEtNDI5YS1iYTA2LWJjMDg5YjZiOGU3OCJ9.MEuwukwI9T-PvtQ4OMW8EC6BXCHS-ys_p6-oE5xcKOTsSoDp5voTbY630QujV6VSKSTn6eOhemb1zy-eyhi2xQ', b'0', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJrYXRhcmluYTEyMzQ1NkBnbWFpbC5jb20iLCJzY29wZSI6IlVTRVIiLCJpc3MiOiJhdHVzIiwiZXhwIjoxNzM0MDI5MDcwLCJpYXQiOjE3MzQwMjU0NzAsImp0aSI6IjU1MTQ0MTUzLTYxODAtNGE2ZC05MjE3LTM3NjMwNTEzNmYyOSJ9.n2g7Q9Ncv1EBFnQ5ksaizJcb2Ai3k6KJxJvRmJKU-YkNmEeqrQ4wm9Ze5UXf8e2ARsnkpkAZ-L4uSqiwmAgVtQ', '96881088-f6fe-4ff8-84b0-4cecdd50a64d'),
('28932b7f-24d2-4af2-a0f0-ee0bc2567642', '2024-12-13 11:27:47.000000', b'0', '2024-12-13 20:27:47.000000', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJlazEyMzNAZ21haWwuY29tIiwic2NvcGUiOiJVU0VSIiwiaXNzIjoiYXR1cyIsImV4cCI6MTczNDA5NjQ2NywiaWF0IjoxNzM0MDYwNDY3LCJqdGkiOiIwYjAwZTk4Yy1hYjQxLTRhMjYtODljOS02NmUxOTdhNjhiNzkifQ.nzrgXJNVGawCvkKXVcXJqrTqQFFhvPhNikqzPhlDaHa6ULAfvQKK8QS0HiB4-6hlc6aIrqN8ngDerJAbbisT9g', b'0', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJlazEyMzNAZ21haWwuY29tIiwic2NvcGUiOiJVU0VSIiwiaXNzIjoiYXR1cyIsImV4cCI6MTczNDA2NDA2NywiaWF0IjoxNzM0MDYwNDY3LCJqdGkiOiIzMmI1ODdkMi01MTg2LTRhMTAtYmQ3MS0wNDdlYThjNWYxZTgifQ.7zeXeYwOTj9Pu6amijgKrxaNHECpi2fTG5lJ4QevcBAhuLdfiEQaKBlxKbBWbdEoC2YeAumy-9NxtGV_N2BRSA', '07219b5f-18dd-4b69-986c-0ed1010e63ac'),
('40905338-9a0b-4dcf-b833-1318115ac32e', '2024-12-13 01:52:40.000000', b'0', '2024-12-13 10:52:40.000000', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJnYXJlbjExQGdtYWlsLmNvbSIsInNjb3BlIjoiVVNFUiIsImlzcyI6ImF0dXMiLCJleHAiOjE3MzQwNjE5NjAsImlhdCI6MTczNDAyNTk2MCwianRpIjoiNDMxM2UzNjEtODQ2MS00ZDZjLWI1NGEtMTY4NzM2YTIyZjI4In0.Mr8BiD4uMU8ET7mgmDKRYHCfqpH3-FheHanKMznfOQoa_ybfw2NLGBlYtauYtSAUHnKIPVafsaNagE3u4EEBPQ', b'0', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJnYXJlbjExQGdtYWlsLmNvbSIsInNjb3BlIjoiVVNFUiIsImlzcyI6ImF0dXMiLCJleHAiOjE3MzQwMjk1NjAsImlhdCI6MTczNDAyNTk2MCwianRpIjoiYWY1MWRlNDEtNTg0Mi00YzJhLTk4ZDMtM2VlYWEyZjIwZWJjIn0.5B9_mgytF3iDoyuTPv-G1p2f1kFCXK28ZnXBsrGIXUIwINUz65Prjv2yQkBLJJuYIOHxC9pOL05yI0Amj1WGjA', 'f7e2b382-41e3-4219-8b4c-b1f4a0a06088'),
('449ed2f4-96df-4a10-a9b0-16d760696a4f', '2024-12-13 02:59:23.000000', b'0', '2024-12-13 11:59:23.000000', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJlazEyMzNAZ21haWwuY29tIiwic2NvcGUiOiJVU0VSIiwiaXNzIjoiYXR1cyIsImV4cCI6MTczNDA2NTk2MywiaWF0IjoxNzM0MDI5OTYzLCJqdGkiOiI0ZjY1NjdlNC1jNzU3LTRjNjYtYjdhOS0zMWFhNGVlN2NjNTEifQ.MNP7kOTw-sPVjcfXq9Et4rmLsO64Ub94hgf7WT1UmGXKyubNd7Xe-f3nCrw0FQCmZjsiznFgWmykkSWu6ki9oA', b'0', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJlazEyMzNAZ21haWwuY29tIiwic2NvcGUiOiJVU0VSIiwiaXNzIjoiYXR1cyIsImV4cCI6MTczNDAzMzU2MywiaWF0IjoxNzM0MDI5OTYzLCJqdGkiOiJkMTFiMzFkZS03ZDcwLTQxYTgtOThiNC0yNTI3NGEwOTE5ZTkifQ.TM1kXkWdKL6Xot0JG4NLNestI1owDFeXU5Y4l032SwcqxwmkOWaqENOG73OCKMtPHn3AbTLr4voaOjIA-NwTJQ', '07219b5f-18dd-4b69-986c-0ed1010e63ac'),
('5c5a2bb6-7181-4890-95b3-b574d73a9145', '2024-12-13 11:27:00.000000', b'0', '2024-12-13 20:27:00.000000', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhc2RmMTIzQGdtYWlsLmNvbSIsInNjb3BlIjoiVVNFUiIsImlzcyI6ImF0dXMiLCJleHAiOjE3MzQwOTY0MjAsImlhdCI6MTczNDA2MDQyMCwianRpIjoiMjQ3Y2EwMWYtNTllNi00ZmZkLTk0ZjEtMDJlNzBhMGY0M2NjIn0.FzSbJHq9Ge5trS3jXzYtQdaIQr4Zw5rE1ovYSDivjYVavn_Rj5EYPANIa8awd2cIlevc4111qg6WW7EgTa4KIQ', b'0', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhc2RmMTIzQGdtYWlsLmNvbSIsInNjb3BlIjoiVVNFUiIsImlzcyI6ImF0dXMiLCJleHAiOjE3MzQwNjQwMjAsImlhdCI6MTczNDA2MDQyMCwianRpIjoiNjFhMjE0YTYtYTJjZC00ZDM0LThjMzgtMmRlODg1MDJhZmIyIn0.R7gtEIwFYCF6aahUqoZrXU5VL6uCoUn6xFtxIUNTIgmb1Nwwum5KwC4uZsP8KzEM4r3w7SUBngThJw8MMbl1qg', 'dcd84c9e-c7d2-4216-bd51-337799630f2f'),
('69457239-606e-427f-badc-70fb1daca696', '2024-12-13 11:24:23.000000', b'0', '2024-12-13 20:24:23.000000', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhc2RmMTIzQGdtYWlsLmNvbSIsInNjb3BlIjoiVVNFUiIsImlzcyI6ImF0dXMiLCJleHAiOjE3MzQwOTYyNjMsImlhdCI6MTczNDA2MDI2MywianRpIjoiN2ZkY2RlMWEtNjVmYS00NzExLTkwNGQtOGVhOGU3MGVhZmMwIn0.w_-r_aqkuOUwtwFkwolDvrLHzWPRdUPe_-2a8TCGa7bMY4y1Zzjmb2k0FgWl4hUd2yl7cw9OKlFecIizjwRVjQ', b'0', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhc2RmMTIzQGdtYWlsLmNvbSIsInNjb3BlIjoiVVNFUiIsImlzcyI6ImF0dXMiLCJleHAiOjE3MzQwNjM4NjMsImlhdCI6MTczNDA2MDI2MywianRpIjoiMTc1OGI2YjAtMzdmYi00NWIzLWEzZWMtNzJlMmJiNWJlZTVjIn0.0i03ipa9Ai8oDzGrt0MFUcfyw2zZKe_K18zNHo4ZkACOkvRM-DwqDGEChz4-Y0CAQ0n6VS9XN_O5Wx965MP8Xw', 'dcd84c9e-c7d2-4216-bd51-337799630f2f'),
('6cb6cc61-5c51-46c8-b3af-7d97a16afe20', '2024-12-13 11:38:16.000000', b'0', '2024-12-13 20:38:16.000000', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJlazEyMzNAZ21haWwuY29tIiwic2NvcGUiOiJVU0VSIiwiaXNzIjoiYXR1cyIsImV4cCI6MTczNDA5NzA5NiwiaWF0IjoxNzM0MDYxMDk2LCJqdGkiOiI2NGRhOWNiMy1jOGQxLTRiNmItYWM3MC0zMmE2NWRlZjk1ODkifQ.EIQ-5elfGCr0ZScGHn0cuH5p4ThTwBR9sjKKOCtno_hdHiz9ja88UmkyDgRznzBTMNbXib4TQylTPOYmYLqbpA', b'0', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJlazEyMzNAZ21haWwuY29tIiwic2NvcGUiOiJVU0VSIiwiaXNzIjoiYXR1cyIsImV4cCI6MTczNDA2NDY5NiwiaWF0IjoxNzM0MDYxMDk2LCJqdGkiOiJmODRkN2EyNy0xNGY5LTRkZDItYTdlYi1kYTRlNDE3MTM2N2YifQ.nPc47TJg_34xpXwE9uiDdMD95Ps1HJxYW58PbnSMQnoTk_wZGR5SYnwTGUiKT7jk2TwWSkddz4OVwyIAWP0tyw', '07219b5f-18dd-4b69-986c-0ed1010e63ac'),
('8e0b124b-e136-4995-bca8-a1399c21c88e', '2024-12-13 11:36:05.000000', b'0', '2024-12-13 20:36:05.000000', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ2YWxlbnRpbm9AZ21haWwuY29tIiwic2NvcGUiOiJVU0VSIiwiaXNzIjoiYXR1cyIsImV4cCI6MTczNDA5Njk2NSwiaWF0IjoxNzM0MDYwOTY1LCJqdGkiOiJkYjA1ODc0ZC0xZWNjLTQ3NGUtYWEwNi0zMjZlMDBjYzU4MzcifQ.mgqOABIWe1zaqnpyC7qPoBJv6qXsOwgRImlokKWcTLSc5WQYl1PJoAYybLxECO-QETsV9xIZ3tZVjmOU0OHefQ', b'0', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ2YWxlbnRpbm9AZ21haWwuY29tIiwic2NvcGUiOiJVU0VSIiwiaXNzIjoiYXR1cyIsImV4cCI6MTczNDA2NDU2NSwiaWF0IjoxNzM0MDYwOTY1LCJqdGkiOiIzMDFlNmUyYS01NGI4LTRhM2YtODY3Yi1kZmEwZWYzYTBmMTQifQ.J5FIIV_C1YUFbqQ7cHVznu2ruGjj_yshsyCqUULkT6Qx3CR-xsLbxeuKP_LnH0ctESY_Q7edJfBkXZGxYCjsdA', '70697640-61b1-4a91-bd98-1893c8284050'),
('978f3172-9dd0-432b-9ae7-287acbcde73e', '2024-12-13 01:18:27.000000', b'0', '2024-12-13 10:18:27.000000', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjaGlkcUB2aWEub3JnLnZuIiwic2NvcGUiOiJVU0VSIiwiaXNzIjoiYXR1cyIsImV4cCI6MTczNDA1OTkwNywiaWF0IjoxNzM0MDIzOTA3LCJqdGkiOiI0M2E5MjNmYy1hNGRmLTRlNzEtYWVjMy1mMThmMmZhM2FkMWUifQ.V6CEWV2shFETNtKF3fLsTaX142ifL3qhXoNUzx5OAevXlBKO_Itk99eg_YVNJuHZ6rAfCIz9EBb2mUNfCc9QlQ', b'0', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjaGlkcUB2aWEub3JnLnZuIiwic2NvcGUiOiJVU0VSIiwiaXNzIjoiYXR1cyIsImV4cCI6MTczNDAyNzUwNywiaWF0IjoxNzM0MDIzOTA3LCJqdGkiOiI0ODhmOTE4MC04MTM1LTRkN2QtYTEwMS1mNGJhZTNjMzlkNjkifQ.3VWvFetYcHblmm_YuIa-4MksnJtZXKWAuH38u1OxCViWoGH8eoMmqAfMcZ08T6iMM_uTBkhJUDbUk6QDKpvmGg', 'c98d481b-98d3-4008-a583-03cc0d0d8cfb'),
('9d641085-6912-4ee7-b452-e063023e697f', '2024-12-13 01:39:31.000000', b'0', '2024-12-13 10:39:31.000000', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJnYXJlbjExQGdtYWlsLmNvbSIsInNjb3BlIjoiVVNFUiIsImlzcyI6ImF0dXMiLCJleHAiOjE3MzQwNjExNzEsImlhdCI6MTczNDAyNTE3MSwianRpIjoiN2Q4YWQ1ZGQtOTQ4ZC00YjExLThlY2ItMDk3MjA2NTg4MTViIn0.H8z2OD0BRr6lPRLjCFG6W9WiXcSALrNUcDE6BHdAGiZ68-bOoQhYXLPd8EHnmymmCf7CHReBSA4f1E5ilD7p-Q', b'0', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJnYXJlbjExQGdtYWlsLmNvbSIsInNjb3BlIjoiVVNFUiIsImlzcyI6ImF0dXMiLCJleHAiOjE3MzQwMjg3NzEsImlhdCI6MTczNDAyNTE3MSwianRpIjoiMjA3NDBjYmItM2E5MC00ZDE2LWIwOTctOGZjYzRiNzE5MDVmIn0.O1XIx5algPXI7lCJKYtfl2iLk4MOy28N5uEepU98fp59YUvya-5S4R0YwEMj7El9njcRwssu24cNy13wGHt5yQ', 'f7e2b382-41e3-4219-8b4c-b1f4a0a06088'),
('cb910fa3-06a7-4b24-adb4-21dec0cb982f', '2024-12-13 11:38:52.000000', b'0', '2024-12-13 20:38:52.000000', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJnYXJlbjExQGdtYWlsLmNvbSIsInNjb3BlIjoiVVNFUiIsImlzcyI6ImF0dXMiLCJleHAiOjE3MzQwOTcxMzIsImlhdCI6MTczNDA2MTEzMiwianRpIjoiNzA3NDc1ZDEtODhiMS00NzI2LWIxNWEtOWMyNzYxMTQ2ZWE5In0.miij5MZmINWe9AIOy1gJV2w1864cwodPnkGtGDbpWrAhnxBCaZ7UDgU445LKHu2ZBNv0guDw65M1czlYJp069g', b'0', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJnYXJlbjExQGdtYWlsLmNvbSIsInNjb3BlIjoiVVNFUiIsImlzcyI6ImF0dXMiLCJleHAiOjE3MzQwNjQ3MzIsImlhdCI6MTczNDA2MTEzMiwianRpIjoiMTk4ZjIzYzUtNDhiMC00ZGRlLTgxYjYtZWJhYzY1OGRmMzJkIn0.e6RKdHKlXyy4cqxa_6bM_cA-6FVcD26lPiJ_YJcY8A_Q8ZkHTHqIIbLPEnSVCI-AtcUsud-uCRrwXC2iKrh7Vw', 'f7e2b382-41e3-4219-8b4c-b1f4a0a06088'),
('d03453a4-951f-4e7e-bbc8-b96ded8d331a', '2024-12-13 02:16:01.000000', b'0', '2024-12-13 11:16:01.000000', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjaGlkcUB2aWEub3JnLnZuIiwic2NvcGUiOiJVU0VSIiwiaXNzIjoiYXR1cyIsImV4cCI6MTczNDA2MzM2MSwiaWF0IjoxNzM0MDI3MzYxLCJqdGkiOiJkYTZiMzdlNS1iMDc5LTQ3YjItODk4Zi03ZTg2Zjg1YmE4MTUifQ.1GaqNJwDZqCK_VcGx7nJsqXue0vUjBKsy21yvC1DxfExst33DgQrizFjVPupCEwHZySZV9JuwW6Bt5WSLsOgEw', b'0', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjaGlkcUB2aWEub3JnLnZuIiwic2NvcGUiOiJVU0VSIiwiaXNzIjoiYXR1cyIsImV4cCI6MTczNDAzMDk2MSwiaWF0IjoxNzM0MDI3MzYxLCJqdGkiOiJlNzRkZDNmOC1iYjA5LTRlNjMtYTY3MS1hN2ZlZjUwY2NlMDcifQ.7v2Y2fwi5KFEafKWNRq00tvk2dYT4Lqw17ysiU8KerMySWMuOcC8cchSTLox9a9bUNmonjNm7KJuxt87qhgpbg', 'c98d481b-98d3-4008-a583-03cc0d0d8cfb'),
('eb9b8913-c5ed-4777-b23b-25cddfcabd25', '2024-12-13 01:30:45.000000', b'0', '2024-12-13 10:30:45.000000', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJxMTIzNDU2QGdtYWlsLmNvbSIsInNjb3BlIjoiVVNFUiIsImlzcyI6ImF0dXMiLCJleHAiOjE3MzQwNjA2NDUsImlhdCI6MTczNDAyNDY0NSwianRpIjoiZGI1NGRmYTUtZTljYS00ZDIyLThkNDQtMmRjNjk2NGNmZTMxIn0.CA53yYDAI9J9HYn9wENM5f86uRGFjDGFwAedaRFK0fmMNxAArpPbrylPzjrSYkbwD4zjFON2f-q1F81dZLhSTg', b'0', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJxMTIzNDU2QGdtYWlsLmNvbSIsInNjb3BlIjoiVVNFUiIsImlzcyI6ImF0dXMiLCJleHAiOjE3MzQwMjgyNDUsImlhdCI6MTczNDAyNDY0NSwianRpIjoiOGNjMjI3MzctZGM4Yi00NTBhLTg1NDAtYzA5ZmIzNWZkODIzIn0.Qh2lrG9mU4E9CRD7JFbff8HIG75sM1pfEuMmTDbZfhVVEP9OU9bHHiIO03dm9B3Wjf49dFVwwu7PyhlnCzmllQ', 'a9b50f18-b509-4304-ac42-cd11bc368c3c'),
('ef139818-d9e2-49c8-8e37-83adfbca2f8d', '2024-12-13 01:04:34.000000', b'0', '2024-12-13 10:04:34.000000', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJxdDMyNDg2QGdtYWlsLmNvbSIsInNjb3BlIjoiVVNFUiIsImlzcyI6ImF0dXMiLCJleHAiOjE3MzQwNTkwNzQsImlhdCI6MTczNDAyMzA3NCwianRpIjoiZmY0ZjIwZmEtYzcyNy00OTE1LWI4YjQtNTQ5ZDZjMzU1M2U5In0.XY0RuwUeHXwBAPhgEtF7nTXWMbogGP_h8XGPYZrIN8rwe6SQP33XwDjYhUCiDBLwoLzmVweFWlgoFfTtmKK-TA', b'0', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJxdDMyNDg2QGdtYWlsLmNvbSIsInNjb3BlIjoiVVNFUiIsImlzcyI6ImF0dXMiLCJleHAiOjE3MzQwMjY2NzQsImlhdCI6MTczNDAyMzA3NCwianRpIjoiYjgyOWZjMDctMWM4My00NGJmLTgyNTYtMTFmZDg3MTkyNTdiIn0.f5-CY-sJSDx_49HSx_Mev_wnpQ_RlilcgEkQW_9nGAgS-xua2fdqQF3m77JN8IrRukm8L-3hV9yQs7Y4aMzjcQ', '7139df4c-a973-417d-bb88-54fd7c099a4e'),
('f305ef41-20a6-4886-96fd-6cc9ae98c010', '2024-12-13 01:50:50.000000', b'0', '2024-12-13 10:50:50.000000', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjaGlkcUB2aWEub3JnLnZuIiwic2NvcGUiOiJVU0VSIiwiaXNzIjoiYXR1cyIsImV4cCI6MTczNDA2MTg1MCwiaWF0IjoxNzM0MDI1ODUwLCJqdGkiOiI0Zjk3NjAxYy0zODI5LTQzOTktODUyNS0zMTNhZDBiNzEzZjEifQ.xCkFbCkzBtStgBhmW69bjRLXCqHyh2sr9gKlZCselWn_81eEG4d5P4kn8BfKNPQg7eon2RQOmF-kuoqi3gPn_A', b'0', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjaGlkcUB2aWEub3JnLnZuIiwic2NvcGUiOiJVU0VSIiwiaXNzIjoiYXR1cyIsImV4cCI6MTczNDAyOTQ1MCwiaWF0IjoxNzM0MDI1ODUwLCJqdGkiOiIwMmRmZTk2Ni00MWI1LTQ2ODItYTgzZi0xMWY3ODFiYzQ0ODkifQ.JzH7zsxmo2OtpRjr6E0o3arOQK3My57BxbD24OAKc1VwsattIBZcFYCbURb8gbIh_LIRP4xyQh0ars33A8_Klg', 'c98d481b-98d3-4008-a583-03cc0d0d8cfb'),
('f3d477b0-6d64-4629-8202-4c8a7fe54d6c', '2024-12-13 11:26:29.000000', b'0', '2024-12-13 20:26:29.000000', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJlazEyMzNAZ21haWwuY29tIiwic2NvcGUiOiJVU0VSIiwiaXNzIjoiYXR1cyIsImV4cCI6MTczNDA5NjM4OSwiaWF0IjoxNzM0MDYwMzg5LCJqdGkiOiI2ZWZiMTg2Zi04ZTgxLTQyOGItOTE5MC03NjZhYjI5NzZmMDEifQ.IHiwjgM1kVRM-iO7EBX0i7x77inE4VbFGA9imr0uL4cAH630_xqwaYVdtlp7kFVXQ5MrgDQ1HuApWJ_r6rUaTQ', b'0', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJlazEyMzNAZ21haWwuY29tIiwic2NvcGUiOiJVU0VSIiwiaXNzIjoiYXR1cyIsImV4cCI6MTczNDA2Mzk4OSwiaWF0IjoxNzM0MDYwMzg5LCJqdGkiOiJlNjM3MDMzZi03M2IyLTQ0NGQtOTU4OS1lMzkzZTYzZDYzODAifQ.3iRp6L9U24dh4T-kEMtNWmm-MmpQ4ZYz1Qe80IDX0JT0iSiMIrqX8GrW-QJIukZPn7b7pXNFYruY20g5dODG9Q', '07219b5f-18dd-4b69-986c-0ed1010e63ac');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `userId` varchar(255) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `email` varchar(30) NOT NULL,
  `is_deleted` bit(1) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `password_hash` varchar(250) NOT NULL,
  `reputation` int(11) DEFAULT NULL,
  `slogan` varchar(100) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `username` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`userId`, `created_at`, `deleted_at`, `description`, `email`, `is_deleted`, `location`, `password_hash`, `reputation`, `slogan`, `updated_at`, `username`) VALUES
('07219b5f-18dd-4b69-986c-0ed1010e63ac', '2024-12-13 01:59:20.000000', NULL, '<p>Wolfline</p>', 'ek1233@gmail.com', b'0', 'Hưng Yên', '$2a$10$Fvc60Nayrr/A3sb0ZZF1xuokrxPJ.PoiCh7oTytL38/NrmJ03B1k6', 90, 'Zai Hưng Yên Tán đổ em luông', '2024-12-13 02:05:23.000000', 'Ekko'),
('70697640-61b1-4a91-bd98-1893c8284050', '2024-12-13 10:36:02.000000', NULL, '', 'valentino@gmail.com', b'0', '', '$2a$10$J1D1vcwExQolXhCwXrUVX.yGbbzVcy7OA.ei6UZvFY4F3u0NJIhpm', 20, '', '2024-12-13 10:36:02.000000', 'Valentino'),
('7139df4c-a973-417d-bb88-54fd7c099a4e', '2024-12-13 00:04:31.000000', NULL, '<p>Bờ Rai Ừn Nèk</p>', 'qt32486@gmail.com', b'0', 'Hà Nội', '$2a$10$bv6kwYK2ItAs8M/h5XFiR.3cIINV/Axft1kD.rgPiTohExxxX5LBu', 100, 'Là 1 người mới sang VN du lịch ', '2024-12-13 00:17:25.000000', 'BrianSanford'),
('96881088-f6fe-4ff8-84b0-4cecdd50a64d', '2024-12-13 00:44:27.000000', NULL, '', 'katarina123456@gmail.com', b'0', '', '$2a$10$1MoL1Hp7cIpX/.wza/HofOY1BOX3C7zzI8aisQ7laIZZth7KXIHbS', 0, '', '2024-12-13 00:44:27.000000', 'Katarina'),
('a9b50f18-b509-4304-ac42-cd11bc368c3c', '2024-12-13 00:30:42.000000', NULL, '', 'q123456@gmail.com', b'0', '', '$2a$10$CP6c78rBfKrnbTWBRrOMKedjmp8qRczXb5PluaTvN3MiUBXerlc/C', 0, '', '2024-12-13 00:30:42.000000', 'Charlie'),
('c98d481b-98d3-4008-a583-03cc0d0d8cfb', '2024-12-13 00:18:24.000000', NULL, '<p>Từ 1 MasterChef sang bên Coder</p>', 'chidq@via.org.vn', b'0', 'Thanh Hóa', '$2a$10$ogIomqUr.qcFPNMKzY3rAeCL2V8ehMQ/QdYzBgc5NlsV8xu071Of6', 5, 'Tham gia MasterChef nàoooo', '2024-12-13 00:19:50.000000', 'Krissi'),
('cc0afac1-cf83-4939-b24e-321b7d1cfd23', '2024-12-12 23:35:14.000000', NULL, NULL, 'admin@atus.stackfl.com', b'0', NULL, '$2a$10$CwdMP8cygroFkcSO6Bb66OiS36JotvIAeXG8Ks6D7jZNhWs5NkNGG', 0, NULL, '2024-12-12 23:35:14.000000', 'admin'),
('dcd84c9e-c7d2-4216-bd51-337799630f2f', '2024-12-13 10:24:20.000000', NULL, '', 'asdf123@gmail.com', b'0', '', '$2a$10$ykq5Qty3T7m8711FP9EAjO6XNHCRoJVvfyZ8/2KoUu695MIT8lv6W', 20, '', '2024-12-13 10:24:20.000000', 'Annie'),
('f7e2b382-41e3-4219-8b4c-b1f4a0a06088', '2024-12-13 00:39:28.000000', NULL, '', 'garen11@gmail.com', b'0', '', '$2a$10$VqoaU0fkOjzyYRHB8EShpu1r5Bj4RWWEhi.8Crbkoqmf29sWMRy1S', 110, '', '2024-12-13 00:39:28.000000', 'Garen');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users_badges`
--

CREATE TABLE `users_badges` (
  `userId` varchar(255) NOT NULL,
  `badgeId` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users_badges`
--

INSERT INTO `users_badges` (`userId`, `badgeId`) VALUES
('c98d481b-98d3-4008-a583-03cc0d0d8cfb', 'd2f98cad-f322-42de-9e7f-7530d53987f8'),
('f7e2b382-41e3-4219-8b4c-b1f4a0a06088', '03db9bb5-1138-44fc-8202-d9ad5d6d1fdd'),
('f7e2b382-41e3-4219-8b4c-b1f4a0a06088', '0b520fc1-a413-4e26-9c30-bdafab959bc8'),
('f7e2b382-41e3-4219-8b4c-b1f4a0a06088', 'a1da574e-0fc5-4b80-bbcb-47950e52d25a'),
('f7e2b382-41e3-4219-8b4c-b1f4a0a06088', 'd2f98cad-f322-42de-9e7f-7530d53987f8');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_roles`
--

CREATE TABLE `user_roles` (
  `User_userId` varchar(255) NOT NULL,
  `roles` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user_roles`
--

INSERT INTO `user_roles` (`User_userId`, `roles`) VALUES
('cc0afac1-cf83-4939-b24e-321b7d1cfd23', 'ADMIN'),
('7139df4c-a973-417d-bb88-54fd7c099a4e', 'USER'),
('c98d481b-98d3-4008-a583-03cc0d0d8cfb', 'USER'),
('a9b50f18-b509-4304-ac42-cd11bc368c3c', 'USER'),
('f7e2b382-41e3-4219-8b4c-b1f4a0a06088', 'USER'),
('96881088-f6fe-4ff8-84b0-4cecdd50a64d', 'USER'),
('07219b5f-18dd-4b69-986c-0ed1010e63ac', 'USER'),
('dcd84c9e-c7d2-4216-bd51-337799630f2f', 'USER'),
('70697640-61b1-4a91-bd98-1893c8284050', 'USER');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `votes`
--

CREATE TABLE `votes` (
  `voteId` varchar(255) NOT NULL,
  `create_at` datetime(6) DEFAULT NULL,
  `update_at` datetime(6) DEFAULT NULL,
  `voteType` enum('DOWNVOTE','NOTVOTE','UPVOTE') NOT NULL,
  `answerId` varchar(255) DEFAULT NULL,
  `questionId` varchar(255) DEFAULT NULL,
  `userId` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `votes`
--

INSERT INTO `votes` (`voteId`, `create_at`, `update_at`, `voteType`, `answerId`, `questionId`, `userId`) VALUES
('0962b861-0a3d-40a0-8a13-f5159f0c1d70', '2024-12-13 10:38:21.000000', '2024-12-13 10:38:25.000000', 'UPVOTE', NULL, '4fce0b63-048b-417d-9d53-d9edc8490f77', '07219b5f-18dd-4b69-986c-0ed1010e63ac'),
('0baf58d6-343f-4a7b-9319-c93e29576177', '2024-12-13 01:16:33.000000', '2024-12-13 01:16:38.000000', 'UPVOTE', NULL, 'c56a5a31-53d0-4660-8700-e188ecccc980', 'c98d481b-98d3-4008-a583-03cc0d0d8cfb'),
('284c9955-f35f-4080-b5c8-a8231b8a1eac', '2024-12-13 00:47:54.000000', '2024-12-13 00:49:44.000000', 'UPVOTE', NULL, 'b5c5cbb2-6b07-4a42-aa90-35747ef9008b', '96881088-f6fe-4ff8-84b0-4cecdd50a64d'),
('2d8ede3e-12cb-4ae2-8fd8-f184c38f8be8', '2024-12-13 00:56:54.000000', '2024-12-13 00:57:01.000000', 'UPVOTE', NULL, '31fa4cc0-39ba-4cd7-a9f2-e8c04f4ea15a', 'f7e2b382-41e3-4219-8b4c-b1f4a0a06088'),
('38000203-ed61-41ef-9d69-723ffcf38883', '2024-12-13 00:47:11.000000', '2024-12-13 00:48:12.000000', 'UPVOTE', '10ffe4ef-19b8-439e-bbbd-39d3f0a81524', NULL, '96881088-f6fe-4ff8-84b0-4cecdd50a64d'),
('6e7cb111-9477-401d-ba8f-f776d53e68c0', '2024-12-13 00:52:46.000000', '2024-12-13 00:53:07.000000', 'NOTVOTE', NULL, '1d458d39-fd7c-4538-b888-58517781128b', 'f7e2b382-41e3-4219-8b4c-b1f4a0a06088'),
('80d4d2b7-046d-4c11-9a4f-40b963b48bb4', '2024-12-13 10:27:53.000000', '2024-12-13 10:28:03.000000', 'UPVOTE', NULL, '191cf872-2dda-4e0c-bfa4-6b99e729ec78', '07219b5f-18dd-4b69-986c-0ed1010e63ac'),
('8258d0fb-e273-4c63-ab03-7797dde15697', '2024-12-13 00:25:11.000000', '2024-12-13 01:38:42.000000', 'UPVOTE', NULL, '497b27ce-07b9-4369-b4a1-24a12542c9d3', 'c98d481b-98d3-4008-a583-03cc0d0d8cfb'),
('94f1e52f-42ba-4766-a9a5-44bf6222750b', '2024-12-13 10:39:00.000000', '2024-12-13 10:39:18.000000', 'UPVOTE', NULL, '4fce0b63-048b-417d-9d53-d9edc8490f77', 'f7e2b382-41e3-4219-8b4c-b1f4a0a06088'),
('99e10f5b-fbbc-424d-a05c-d8e79da32d72', '2024-12-13 00:22:23.000000', '2024-12-13 00:23:17.000000', 'UPVOTE', NULL, 'be3542ae-0ad0-4f93-aa9f-99e33f24131b', 'c98d481b-98d3-4008-a583-03cc0d0d8cfb'),
('a908fdfd-bdf1-4041-a2c0-38a7c638a4dd', '2024-12-13 00:24:30.000000', '2024-12-13 00:24:48.000000', 'UPVOTE', NULL, '31fa4cc0-39ba-4cd7-a9f2-e8c04f4ea15a', 'c98d481b-98d3-4008-a583-03cc0d0d8cfb'),
('d2307bfd-608d-4cbb-a5f4-f1093018cbae', '2024-12-13 01:16:08.000000', '2024-12-13 01:16:29.000000', 'DOWNVOTE', NULL, '65acbfed-379b-40f8-955c-44b736ad678e', 'c98d481b-98d3-4008-a583-03cc0d0d8cfb'),
('d5cde028-1f56-4f04-9259-4c6206fff9ba', '2024-12-13 00:44:38.000000', NULL, 'UPVOTE', NULL, 'd904c8d0-c5ba-4f7e-a61f-c820fbf3e2e7', '96881088-f6fe-4ff8-84b0-4cecdd50a64d');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`answerId`),
  ADD KEY `FKqr50cwei7wr2sx1g7tugdlu2i` (`questionId`),
  ADD KEY `FKblr833eotv6ljkpiav9s6b0d6` (`userId`);

--
-- Chỉ mục cho bảng `badges`
--
ALTER TABLE `badges`
  ADD PRIMARY KEY (`badgeId`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`commentId`),
  ADD KEY `FKrrr5ghqbab5g3kr0bnhx9ro4o` (`answerId`),
  ADD KEY `FKmb02bofwh6v7o9ijejno3fr29` (`questionId`),
  ADD KEY `FK3otd8f5ei3ewk9366frwusulq` (`userId`);

--
-- Chỉ mục cho bảng `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`questionId`),
  ADD KEY `FKyt6c39isihtqb8hvit9jsymo` (`userId`);

--
-- Chỉ mục cho bảng `questions_tags`
--
ALTER TABLE `questions_tags`
  ADD KEY `FKa2xolvrhf9xdpp4qalopt5wve` (`tagId`),
  ADD KEY `FKgie0ct2m92in75egdkpo4bvie` (`questionId`);

--
-- Chỉ mục cho bảng `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`tagId`);

--
-- Chỉ mục cho bảng `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`tokenId`),
  ADD KEY `FKqwinwa8ldeiwgfkby67e9uu07` (`userId`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`);

--
-- Chỉ mục cho bảng `users_badges`
--
ALTER TABLE `users_badges`
  ADD PRIMARY KEY (`userId`,`badgeId`),
  ADD KEY `FKbl1p3mairi8bac2kib9rdfvsl` (`badgeId`);

--
-- Chỉ mục cho bảng `user_roles`
--
ALTER TABLE `user_roles`
  ADD KEY `FKdgsdjhpscx6fqkkll0n3h0src` (`User_userId`);

--
-- Chỉ mục cho bảng `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`voteId`),
  ADD KEY `FKnkv9sirdortq3ornitihuyas1` (`answerId`),
  ADD KEY `FKr8wb9qbakiate7kuhq3mf1h6b` (`questionId`),
  ADD KEY `FKcpc5p85x1v37t304v3h8b1k1r` (`userId`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `FKblr833eotv6ljkpiav9s6b0d6` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`),
  ADD CONSTRAINT `FKqr50cwei7wr2sx1g7tugdlu2i` FOREIGN KEY (`questionId`) REFERENCES `questions` (`questionId`);

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `FK3otd8f5ei3ewk9366frwusulq` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`),
  ADD CONSTRAINT `FKmb02bofwh6v7o9ijejno3fr29` FOREIGN KEY (`questionId`) REFERENCES `questions` (`questionId`),
  ADD CONSTRAINT `FKrrr5ghqbab5g3kr0bnhx9ro4o` FOREIGN KEY (`answerId`) REFERENCES `answers` (`answerId`);

--
-- Các ràng buộc cho bảng `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `FKyt6c39isihtqb8hvit9jsymo` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`);

--
-- Các ràng buộc cho bảng `questions_tags`
--
ALTER TABLE `questions_tags`
  ADD CONSTRAINT `FKa2xolvrhf9xdpp4qalopt5wve` FOREIGN KEY (`tagId`) REFERENCES `tags` (`tagId`),
  ADD CONSTRAINT `FKgie0ct2m92in75egdkpo4bvie` FOREIGN KEY (`questionId`) REFERENCES `questions` (`questionId`);

--
-- Các ràng buộc cho bảng `tokens`
--
ALTER TABLE `tokens`
  ADD CONSTRAINT `FKqwinwa8ldeiwgfkby67e9uu07` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`);

--
-- Các ràng buộc cho bảng `users_badges`
--
ALTER TABLE `users_badges`
  ADD CONSTRAINT `FKalauvvos4atjp8guvbhqmaq0k` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`),
  ADD CONSTRAINT `FKbl1p3mairi8bac2kib9rdfvsl` FOREIGN KEY (`badgeId`) REFERENCES `badges` (`badgeId`);

--
-- Các ràng buộc cho bảng `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `FKdgsdjhpscx6fqkkll0n3h0src` FOREIGN KEY (`User_userId`) REFERENCES `users` (`userId`);

--
-- Các ràng buộc cho bảng `votes`
--
ALTER TABLE `votes`
  ADD CONSTRAINT `FKcpc5p85x1v37t304v3h8b1k1r` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`),
  ADD CONSTRAINT `FKnkv9sirdortq3ornitihuyas1` FOREIGN KEY (`answerId`) REFERENCES `answers` (`answerId`),
  ADD CONSTRAINT `FKr8wb9qbakiate7kuhq3mf1h6b` FOREIGN KEY (`questionId`) REFERENCES `questions` (`questionId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
